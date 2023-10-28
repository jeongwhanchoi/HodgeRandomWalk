import torch
from torch_geometric.graphgym.config import cfg
from torch_geometric.graphgym.models.encoder import AtomEncoder, BondEncoder
from torch_geometric.graphgym.register import register_node_encoder, register_edge_encoder

from graphgps.encoder.ast_encoder import ASTNodeEncoder, ASTEdgeEncoder
from graphgps.encoder.kernel_pos_encoder import RWSENodeEncoder, \
    HKdiagSENodeEncoder, ElstaticSENodeEncoder, HodgeLap1PEEdgeEncoder, EdgeRWSEEdgeEncoder, \
    InterRWSEEdgeEncoder, InterRWSENodeEncoder
from graphgps.encoder.laplace_pos_encoder import LapPENodeEncoder
from graphgps.encoder.ppa_encoder import PPANodeEncoder, PPAEdgeEncoder
from graphgps.encoder.signnet_pos_encoder import SignNetNodeEncoder
from graphgps.encoder.voc_superpixels_encoder import VOCNodeEncoder, VOCEdgeEncoder
from graphgps.encoder.type_dict_encoder import TypeDictNodeEncoder, TypeDictEdgeEncoder
from graphgps.encoder.linear_node_encoder import LinearNodeEncoder
from graphgps.encoder.linear_edge_encoder import LinearEdgeEncoder
from graphgps.encoder.equivstable_laplace_pos_encoder import EquivStableLapPENodeEncoder
from graphgps.encoder.dummy_edge_encoder import DummyEdgeEncoder


def concat_node_encoders(encoder_classes, pe_enc_names, edge=False):
    """
    A factory that creates a new Encoder class that concatenates functionality
    of the given list of two or three Encoder classes. First Encoder is expected
    to be a dataset-specific encoder, and the rest PE Encoders.

    Args:
        encoder_classes: List of node encoder classes
        pe_enc_names: List of PE embedding Encoder names, used to query a dict
            with their desired PE embedding dims. That dict can only be created
            during the runtime, once the config is loaded.

    Returns:
        new node encoder class
    """

    class Concat2NodeEncoder(torch.nn.Module):
        """Encoder that concatenates two node encoders.
        """
        enc1_cls = None
        enc2_cls = None
        enc2_name = None
        edge = False

        def __init__(self, dim_emb):
            super().__init__()
            
            if cfg.posenc_EquivStableLapPE.enable and not edge: # Special handling for Equiv_Stable LapPE where node feats and PE are not concat
                self.encoder1 = self.enc1_cls(dim_emb)
                self.encoder2 = self.enc2_cls(dim_emb)
            else:
                # PE dims can only be gathered once the cfg is loaded.
                enc2_dim_pe = getattr(cfg, f"posenc_{self.enc2_name}").dim_pe
            
                self.encoder1 = self.enc1_cls(dim_emb - enc2_dim_pe)
                self.encoder2 = self.enc2_cls(dim_emb, expand_x=False)

        def forward(self, batch):
            batch = self.encoder1(batch)
            batch = self.encoder2(batch)
            return batch

    class Concat3NodeEncoder(torch.nn.Module):
        """Encoder that concatenates three node encoders.
        """
        enc1_cls = None
        enc2_cls = None
        enc2_name = None
        enc3_cls = None
        enc3_name = None

        def __init__(self, dim_emb):
            super().__init__()
            # PE dims can only be gathered once the cfg is loaded.
            enc2_dim_pe = getattr(cfg, f"posenc_{self.enc2_name}").dim_pe
            enc3_dim_pe = getattr(cfg, f"posenc_{self.enc3_name}").dim_pe
            self.encoder1 = self.enc1_cls(dim_emb - enc2_dim_pe - enc3_dim_pe)
            self.encoder2 = self.enc2_cls(dim_emb - enc3_dim_pe, expand_x=False)
            self.encoder3 = self.enc3_cls(dim_emb, expand_x=False)

        def forward(self, batch):
            batch = self.encoder1(batch)
            batch = self.encoder2(batch)
            batch = self.encoder3(batch)
            return batch

    # Configure the correct concatenation class and return it.
    if len(encoder_classes) == 2:
        Concat2NodeEncoder.enc1_cls = encoder_classes[0]
        Concat2NodeEncoder.enc2_cls = encoder_classes[1]
        Concat2NodeEncoder.enc2_name = pe_enc_names[0]
        Concat2NodeEncoder.edge = edge
        return Concat2NodeEncoder
    elif len(encoder_classes) == 3:
        Concat3NodeEncoder.enc1_cls = encoder_classes[0]
        Concat3NodeEncoder.enc2_cls = encoder_classes[1]
        Concat3NodeEncoder.enc3_cls = encoder_classes[2]
        Concat3NodeEncoder.enc2_name = pe_enc_names[0]
        Concat3NodeEncoder.enc3_name = pe_enc_names[1]
        return Concat3NodeEncoder
    else:
        raise ValueError(f"Does not support concatenation of "
                         f"{len(encoder_classes)} encoder classes.")


# Dataset-specific node encoders.
ds_encs = {'Atom': AtomEncoder,
           'ASTNode': ASTNodeEncoder,
           'PPANode': PPANodeEncoder,
           'TypeDictNode': TypeDictNodeEncoder,
           'VOCNode': VOCNodeEncoder,
           'LinearNode': LinearNodeEncoder}

# Positional Encoding node encoders.
pe_encs = {'LapPE': LapPENodeEncoder,
           'RWSE': RWSENodeEncoder,
           'HKdiagSE': HKdiagSENodeEncoder,
           'ElstaticSE': ElstaticSENodeEncoder,
           'SignNet': SignNetNodeEncoder,
           'EquivStableLapPE': EquivStableLapPENodeEncoder,
           'InterRWSE_Node': InterRWSENodeEncoder}

ds_edge_encs = {'Bond': BondEncoder,
                'ASTEdge': ASTEdgeEncoder,
                'PPAEdge': PPAEdgeEncoder,
                'TypeDictEdge': TypeDictEdgeEncoder,
                'VOCEdge': VOCEdgeEncoder,
                'LinearEdge': LinearEdgeEncoder,
                'DummyEdge': DummyEdgeEncoder}

pe_edge_encs = {'HodgeLap1PE': HodgeLap1PEEdgeEncoder,
                'EdgeRWSE': EdgeRWSEEdgeEncoder,
                'InterRWSE_Edge': InterRWSEEdgeEncoder}

# Concat dataset-specific and PE encoders.
for ds_enc_name, ds_enc_cls in ds_encs.items():
    for pe_enc_name, pe_enc_cls in pe_encs.items():
        register_node_encoder(
            f"{ds_enc_name}+{pe_enc_name}",
            concat_node_encoders([ds_enc_cls, pe_enc_cls],
                                 [pe_enc_name])
        )

# Combine both LapPE and RWSE positional encodings.
for ds_enc_name, ds_enc_cls in ds_encs.items():
    register_node_encoder(
        f"{ds_enc_name}+LapPE+RWSE",
        concat_node_encoders([ds_enc_cls, LapPENodeEncoder, RWSENodeEncoder],
                             ['LapPE', 'RWSE'])
    )

# Combine both SignNet and RWSE positional encodings.
for ds_enc_name, ds_enc_cls in ds_encs.items():
    register_node_encoder(
        f"{ds_enc_name}+SignNet+RWSE",
        concat_node_encoders([ds_enc_cls, SignNetNodeEncoder, RWSENodeEncoder],
                             ['SignNet', 'RWSE'])
    )

for ds_enc_name, ds_enc_cls in ds_edge_encs.items():
    register_edge_encoder(f"{ds_enc_name}+HodgeLap1PE", concat_node_encoders([ds_enc_cls, HodgeLap1PEEdgeEncoder], ['HodgeLap1PE'], edge=True))
    register_edge_encoder(f"{ds_enc_name}+EdgeRWSE", concat_node_encoders([ds_enc_cls, EdgeRWSEEdgeEncoder], ['EdgeRWSE'], edge=True))
    register_edge_encoder(f"{ds_enc_name}+InterRWSE_Edge", concat_node_encoders([ds_enc_cls, InterRWSEEdgeEncoder], ['InterRWSE_Edge'], edge=True))