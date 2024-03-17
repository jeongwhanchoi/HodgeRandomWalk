
# debug

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS+RWSE.yaml  wandb.use False &\
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS-LapPE+RWSE.yaml  wandb.use False &\

CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GINE+RWSE.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_1_sim_cos_infer_sample.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_2_sim_cos_infer_sample.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_1_sim_cos_infer_sample_undirected.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_1_sim_cos_infer_sample_bs_256_lr_1e-3.yaml  --repeat 1 wandb.use False &\
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_2_sim_cos_infer_sample_bs_256_lr_1e-3.yaml  --repeat 1 wandb.use False &\

CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_mean_bs_128_lr_3e-3.yaml  --repeat 1 wandb.use False &\  # fail
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample_bs_128_lr_3e-3.yaml  --repeat 1 wandb.use False &\  # fail
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample_bs_128_lr_1e-3.yaml  --repeat 1 wandb.use False &\  # running
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_mean_bs_128_lr_1e-3.yaml  --repeat 1 wandb.use False &\


CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_median_bs_128_lr_1e-3.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GPS_layer_8+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_median_bs_128_lr_1e-3.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_mean_bs_128_lr_1e-3.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GPS_layer_8+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_mean_bs_128_lr_1e-3.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_1_sim_cos_infer_sample_ensemble_5_mean_bs_128_lr_3e-3.yaml  --repeat 1 wandb.use False &\

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_1_sim_cos_infer_sample.yaml  --repeat 1 wandb.use False &\


# new

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_mean_bs_128_lr_1e-3.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GPS_layer_8+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_mean_bs_128_lr_1e-3.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_1_sim_cos_infer_sample_ensemble_5_mean.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_2_sim_cos_infer_sample_ensemble_5_mean_bs_128.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_mean_bs_128.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-RWGINE_layer_10_1+RWSE_ensemble_mean_5.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-RWGINE_layer_15_1+RWSE_ensemble_mean_5.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-RWGINE_layer_10_1+RWSE_ensemble_mean_5_bs_128.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-RWGINE_original+RWSE.yaml --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-RWGINE_original+RWSE_bs_1024_lr_0.005.yaml --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/zinc-GINE+RWSE.yaml --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-GINE+RWSE_bs_128_lr_1e-3.yaml --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE_ensemble_5_mean.yaml --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE_ensemble_5_median.yaml --repeat 3 wandb.use False &\


CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS_layer_5+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_median.yaml  --repeat 3 wandb.use False &\  # charlie
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GPS_layer_8+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_median.yaml  --repeat 3 wandb.use False &\  # charlie
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-RWGINE_layer_20_1+RWSE_ensemble_median_5.yaml  --repeat 3 wandb.use False &\


CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_1_sim_cos_infer_sample_ensemble_5_median.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_2_sim_cos_infer_sample_ensemble_5_median.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GPS+RWSE_RWGINE_layer_3_sim_cos_infer_sample_ensemble_5_median.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-RWGINE_layer_10_1+RWSE_ensemble_median_5.yaml  --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-RWGINE_layer_15_1+RWSE_ensemble_median_5.yaml  --repeat 3 wandb.use False &\

CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE_ensemble_5_median_hiddim_128_sedim_56.yaml --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE_ensemble_5_median_layer_15.yaml --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE_ensemble_5_median_rw_mlp.yaml --repeat 3 wandb.use False &\


CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/zinc-GINE+RWSE_layer_15.yaml --repeat 3 wandb.use False &\   # charlie tmux 5 done
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-GINE+RWSE_layer_20.yaml --repeat 3 wandb.use False &\   # charlie tmux 6 done

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE_ensemble_5_median_layer_20.yaml --repeat 3 wandb.use False &\  # charlie tmux 3 done
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE_ensemble_5_median_layer_15.yaml --repeat 3 wandb.use False &\  # charlie tmux 4 done

CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE+HodgeLap1PE_ensemble_5_median_layer_15.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 0 done

CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE+HodgeLap1PE_bias_False_pedim_16_ensemble_5_median_layer_10.yaml --repeat 3 wandb.use False &\  # charlie tmux 0 done
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE+HodgeLap1PE_bias_True_pedim_16_ensemble_5_median_layer_10.yaml --repeat 3 wandb.use False &\  # charlie tmux 1  done
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE+HodgeLap1PE_bias_True_pedim_16_ensemble_5_median_layer_15.yaml --repeat 3 wandb.use False &\  # charlie tmux 2  done

CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GINE+RWSE+HodgeLap1PE_projzero_linear_bias_True_pedim_16_ensemble_5_median.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 1 done
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GINE+RWSE+HodgeLap1PE_projzero_mlp_bias_True_pedim_16_ensemble_5_median.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 2  done

CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-GINE+RWSE+HodgeLap1PE_sumzeroabs_mlp_bias_True_pedim_16_ensemble_5_median.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 3  done
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-GINE+RWSE+HodgeLap1PE_sumzeroabs_linear_bias_True_pedim_16_ensemble_5_median.yaml --repeat 3 wandb.use False &\  # charlie tmux 5  done

CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE+HodgeLap1PE_projzero_linear_bias_True_pedim_16_ensemble_5_median_layer_15.yaml --repeat 3 wandb.use False &\  # charlie tmux 7 done
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE+HodgeLap1PE_projzero_mlp_bias_True_pedim_16_ensemble_5_median_layer_15.yaml --repeat 1 wandb.use False &\  # charlie tmux 8 / graphPKU tmux 0

# new Hodge1 proj low and EdgeRWSE on zinc
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GINE+RWSE+HodgeLap1PE_projlow_mlp_5_3_8.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 1 pedim=24  done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE+HodgeLap1PE_projlow_mlp_5_3_8_pedim_24.yaml --repeat 3 wandb.use False &\  # charlie tmux 3 done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/zinc-GINE+RWGINE+RWSE+HodgeLap1PE_projlow_mlp_5_3_8_pedim_24.yaml --repeat 3 wandb.use False &\  # charlie tmux 5

CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-GINE+RWSE+EdgeRWSE_undirected_20_linear_dim28.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 2 done
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GINE+RWSE+EdgeRWSE_directed_20_linear_dim28.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 3  done

# inter-intra random walk
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-RWGINE_intra_10+RWSE_ensemble_median_5.yaml --repeat 3 wandb.use False &\  # charlie tmux 7
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GINE+RWGINE_intra_10+RWSE_ensemble_median_5.yaml --repeat 3 wandb.use False &\  # charlie tmux 6

CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GINE+EdgeRWSE_directed_20_linear_dim28.yaml --repeat 3 wandb.use False &\  # charlie tmux 6
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GINE+EdgeRWSE_undirected_20_linear_dim28.yaml --repeat 3 wandb.use False &\  # charlie tmux 7
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/zinc-GINE+RWSE+HodgeLap1PE_projlow_mlp_5_3_8_dim_24_0_0.yaml --repeat 3 wandb.use False &\  # charlie tmux 8
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/zinc-GINE+HodgeLap1PE_projlow_mlp_5_3_8_dim_24_0_0.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 1
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-GINE+HodgeLap1PE_sumzeroabs_mlp_bias_True_pedim_24.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 2
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/zinc-GINE.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 3
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GINE+RWSE+HodgeLap1PE_projlow_mlp_5_5_10_dim_16_8_4.yaml --repeat 3 wandb.use False &\  # charlie tmux 3
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-GINE+HodgeLap1PE_projlow_mlp_5_5_10_dim_16_8_4.yaml --repeat 3 wandb.use False &\  # charlie tmux 4
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/zinc-GINE+LapPE.yaml --repeat 3 wandb.use False &\  # charlie tmux 12




# ogb-molhiv

CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+RWGINE+RWSE.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 4  done
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+RWGINE+RWSE_layer_15.yaml --repeat 3 wandb.use False &\  # charlie tmux 1 done

CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+Hodge1Lap_mlp_dim_12.yaml  --repeat 3 wandb.use False &\  # charlie tmux 6 # this is sum_zero_abs done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/ogbg-molhiv-RWGINE_layer_3+Transformer+RWSE.yaml --repeat 3 wandb.use False &\  # charlie tmux 0 done
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/ogbg-molhiv-RWGINE+Transformer+RWSE+Hodge1Lap_mlp_dim_12.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 5 # this actually have no Hodge1Lap done
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+RWGINE+RWSE+Hodge1Lap_sumzeroabs_mlp_pedim_16.yaml --repeat 3 wandb.use False &\  # charlie tmux 9 # this actually have no Hodge1Lap done
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+Hodge1Lap_sumzeroabs_mlp_dim_24.yaml  --repeat 3 wandb.use False &\  # charlie tmux 1  done

CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+Hodge1Lap_projlow_5_3_8_mlp_dim_24.yaml  --repeat 3 wandb.use False &\  # charlie tmux 5 done
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+Hodge1Lap_projlow_5_3_8_mlp_dim_16.yaml  --repeat 3 wandb.use False &\  # charlie tmux 5 done

CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+EdgeRWSE_directed_step_16_linear_16.yaml  --repeat 3 wandb.use False &\  # graphPKU tmux 6  running
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+EdgeRWSE_directed_step_8_linear_8.yaml  --repeat 3 wandb.use False &\  # graphPKU tmux 0  not running
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+EdgeRWSE_undirected_step_16_linear_16.yaml  --repeat 3 wandb.use False &\  # graphPKU tmux 7   running
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+EdgeRWSE_undirected_step_8_linear_8.yaml  --repeat 3 wandb.use False &\  # charlie tmux 6  not running
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/ogbg-molhiv-GINE+Transformer+RWSE+EdgeRWSE_directed_step_16_linear_16.yaml  --repeat 3 wandb.use False &\   # graphPKU tmux 0  not running
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/ogbg-molhiv-GINE+Transformer+RWSE+EdgeRWSE_undirected_step_16_linear_16.yaml  --repeat 3 wandb.use False &\  # charlie tmux 6  not running
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/ogbg-molhiv-GINE+Transformer+RWSE+Hodge1Lap_projlow_5_3_8_mlp_dim_16.yaml  --repeat 3 wandb.use False &\  # charlie tmux 6  done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/ogbg-molhiv-GINE+Transformer+RWSE.yaml  --repeat 3 wandb.use False &\  # graphPKU tmux 0 done

CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/ogbg-molhiv-GatedGCN+Transformer+RWSE+Hodge1Lap_projlow_5_3_8_mlp_dim_16_0_0.yaml  --repeat 3 wandb.use False &\  # charlie tmux 6 done

# ogb-molpcba

CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+Hodge1Lap_sumzeroabs_pedim_24_mlp.yaml  --repeat 3 wandb.use False &\   # charlie tmux 9 done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+Hodge1Lap_sumzeroabs_pedim_64_linear.yaml  --repeat 3 wandb.use False &\  # graphPKU tmux 4 done
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+Hodge1Lap_sumzeroabs_pedim_84_mlp.yaml  --repeat 3 wandb.use False &\  # charlie tmux 5 done
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE.yaml  --repeat 1 wandb.use False &\  # charlie tmux 2 done
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/ogbg-molpcba-RWGINE+Transformer+RWSE_ensemble_median_5.yaml  --repeat 3 wandb.use False &\  # charlie tmux 0 done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/ogbg-molpcba-RWGINE+Transformer+RWSE+Hodge1Lap_sumzeroabs_pedim_84_mlp.yaml  --repeat 3 wandb.use False &\  # charlie tmux 1 done

CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+Hodge1Lap_projlow_pedim_84_mlp_5_3_8.yaml  --repeat 3 wandb.use False &\  # charlie tmux 2 done
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+Hodge1Lap_projlow_pedim_24_mlp_5_3_8.yaml  --repeat 3 wandb.use False &\  # charlie tmux 0 done

CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+EdgeRWSE_directed_16_linear_24.yaml  --repeat 3 wandb.use False &\  # charlie tmux 10 done
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+EdgeRWSE_undirected_16_linear_24.yaml  --repeat 3 wandb.use False &\  # charlie tmux 5 done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+EdgeRWSE_directed_16_linear_84.yaml  --repeat 3 wandb.use False &\  # charlie tmux 1 done
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+EdgeRWSE_undirected_16_linear_84.yaml  --repeat 3 wandb.use False &\  # charlie tmux 5 done


CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/ogbg-molpcba-GatedGCN+Transformer+RWSE+Hodge1Lap_projlow_pedim_32_0_0_mlp_8_3_8.yaml  --repeat 3 wandb.use False &\  # charlie tmux 2 done


# ogb-ppa
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/ogbg-ppa-RWGINE+Performer_ensemble_5.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 5
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/ogbg-ppa-RWGINE_layer_2+Performer_ensemble_5.yaml --repeat 3 wandb.use False &\  # charlie tmux 9


# ogb-code2
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/ogbg-code2-RWGINE+Performer_ensemble_5.yaml --repeat 3 wandb.use False &\  # charlie tmux 4
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/ogbg-code2-RWGINE_layer_2+Performer_ensemble_5.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 4

# cluster
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/cluster-GatedGCN+Transformer+ESLapPE+Hodge1Lap_sumzeroabs_mlp_16.yaml --repeat 3 wandb.use False &\  # charlie tmux 0 cannot run
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/cluster-GatedGCN+Transformer+ESLapPE+EdgeRWSE_undirected_16_linear_16.yaml --repeat 3 wandb.use False &\  # charlie tmux 0  cannot run
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/cluster-GatedGCN_intra+Transformer+ESLapPE.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 1
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/cluster-GatedGCN_sample+Transformer+ESLapPE.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 2

# pattern
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/pattern-GatedGCN_intra+Transformer-ESLapPE.yaml --repeat 3 wandb.use False &\  # charlie tmux 1 done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/pattern-GatedGCN_sample+Transformer-ESLapPE.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 3 done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/pattern-GatedGCN_original_inter+Transformer-ESLapPE.yaml --repeat 3 wandb.use False &\  # charlie tmux 1 done


# peptides-structure
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Transfomer+EdgeRWSE_directed_16_dim_16.yaml --repeat 3 wandb.use False &\   # graphPKU tmux 0 done
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Transfomer+EdgeRWSE_undirected_16_dim_16.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 1 done
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Transfomer+Hodge1Lap_projlow_8_5_10_mlp_dim_8_4_4.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 2 done

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Transfomer+EdgeRWSE_directed_16_dim_32.yaml --repeat 3 wandb.use False &\   # charlie tmux 0 done
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Transfomer+EdgeRWSE_undirected_16_dim_32.yaml --repeat 3 wandb.use False &\  # charlie tmux 1 done
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Transfomer+Hodge1Lap_projlow_8_5_10_mlp_dim_24_0_0.yaml --repeat 3 wandb.use False &\  # charlie tmux 2 done

CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+EdgeRWSE_directed_16_dim_32.yaml --repeat 3 wandb.use False &\   # charlie tmux 5
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+EdgeRWSE_undirected_16_dim_32.yaml --repeat 3 wandb.use False &\  # charlie tmux 6
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Hodge1Lap_projlow_8_5_10_mlp_dim_24_0_0.yaml --repeat 3 wandb.use False &\  # charlie tmux 7

CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Transfomer_layer_8+Hodge1Lap_projlow_8_5_10_mlp_dim_16_0_0.yaml --repeat 3 wandb.use False &\  # charlie tmux 6

# peptides-function
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Transformer+EdgeRWSE_directed_16_dim_16.yaml --repeat 3 wandb.use False &\  # charlie tmux 6  done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Transformer+EdgeRWSE_undirected_16_dim_16.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 6 done
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Transformer+Hodge1Lap_projlow_8_5_10_dim_8_4_4_mlp.yaml --repeat 3 wandb.use False &\  # graphPKU tmux 7 done

CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Transformer+EdgeRWSE_directed_16_dim_32.yaml --repeat 3 wandb.use False &\  # charlie tmux 3 done
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Transformer+EdgeRWSE_undirected_16_dim_32.yaml --repeat 3 wandb.use False &\  # charlie tmux 7 done
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Transformer+Hodge1Lap_projlow_8_5_10_dim_24_4_4_mlp.yaml --repeat 3 wandb.use False &\  # charlie tmux 7

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/peptides-func-GatedGCN+EdgeRWSE_directed_16_dim_32.yaml --repeat 3 wandb.use False &\  # charlie tmux 0
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/peptides-func-GatedGCN+EdgeRWSE_undirected_16_dim_32.yaml --repeat 3 wandb.use False &\  # charlie tmux 1
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Hodge1Lap_projlow_8_5_10_dim_24_4_4_mlp.yaml --repeat 3 wandb.use False &\  # charlie tmux 2

# pcqm-contact
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/pcqm-contact-GaedGCN+Transformer+EdgRWSE_directed_16_dim_16.yaml --repeat 3 wandb.use False &\    # graphPKU tmux 3 done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/pcqm-contact-GaedGCN+Transformer+EdgRWSE_undirected_16_dim_16.yaml --repeat 3 wandb.use False &\    # graphPKU tmux 4 done
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GPS/pcqm-contact-GaedGCN+Transformer+Hodge1Lap_projlow_8_5_10_mlp_dim_16_4_4.yaml --repeat 3 wandb.use False &\   # graphPKU tmux 5

CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/pcqm-contact-GaedGCN+EdgRWSE_directed_16_dim_32.yaml --repeat 3 wandb.use False &\    # graphPKU tmux 3
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/pcqm-contact-GaedGCN+EdgRWSE_undirected_16_dim_32.yaml --repeat 3 wandb.use False &\    # graphPKU tmux 4
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/pcqm-contact-GaedGCN+Hodge1Lap_projlow_8_5_10_mlp_dim_24_4_4.yaml --repeat 3 wandb.use False &\   # graphPKU tmux 6

# mnist
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/mnist-GatedGCN+Transformer+EdgeRWSE_directed_16_dim_16.yaml --repeat 3 wandb.use False &\   # charlie tmux 5 done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/mnist-GatedGCN+Transformer+EdgeRWSE_directed_16_dim_32.yaml --repeat 3 wandb.use False &\   # charlie tmux 5 done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/mnist-GatedGCN+EdgeRWSE_directed_16_dim_24.yaml --repeat 3 wandb.use False &\   # charlie tmux 5
# cifar10
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/cifar10-GatedGCN+Transformer+LapPE+EdgeRWSE_16_dim_16.yaml --repeat 3 wandb.use False &\   # charlie tmux 4 done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/cifar10-GatedGCN+Transformer+LapPE+EdgeRWSE_16_dim_32.yaml --repeat 3 wandb.use False &\   # charlie tmux 4 done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/cifar10-GINE+LapPE+EdgeRWSE_16_dim_24.yaml --repeat 3 wandb.use False &\
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/cifar10-GatedGCN+LapPE+EdgeRWSE_16_dim_24.yaml --repeat 3 wandb.use False &\  # charlie tmux 4



# rebuttal

# zinc
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GPS+RWSE+HodgeLap1PE_projlow_mlp_5_3_8_pedim_12_6_6.yaml --repeat 5 wandb.use False &\  # charlie tmux 1  done
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS+RWSE+EdgeRWSE_undirected_20_linear_dim28.yaml --repeat 5 wandb.use False &\  # charlie tmux 0  done

CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GPS+RWSE+HodgeLap1PE_projlow_mlp_5_3_8_pedim_24_0_0.yaml --repeat 5 wandb.use False &\  # 4090 tmux 0 gpu1 done
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS+RWSE+EdgeRWSE_directed_20_linear_dim28.yaml --repeat 5 wandb.use False &\  # 4090 tmux 1 gpu0

# Exphormer LRGB


CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/pcqm-contact-GatedGCN+Exformer+Hodge1Lap_projlow_8_5_10_mlp_dim_24_4_4.yaml --repeat 5 wandb.use False &\  # 4090 tmux 2 gpu2
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/pcqm-contact-GatedGCN+Exformer+EdgeRWSE_directed_16_dim_24.yaml --repeat 5 wandb.use False  # A40 tmux 2 running
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Exphormer+Hodge1Lap_projlow_8_5_10_dim_24_4_4_mlp.yaml --repeat 5 wandb.use False  &\  # charlie tmux 4 gpu3  done
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/peptides-func-GatedGCN+Exphormer+EdgeRWSE_directed_16_dim_32.yaml  --repeat 5 wandb.use False  # charlie tmux 2 gpu2 done
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GPS/pcqm-contact-GatedGCN+Exformer.yaml --repeat 1 wandb.use False  &\  # charlie tmux 3 gpu7  done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Exphormer+Hodge1Lap_projlow_8_5_10_mlp_dim_24_4_4.yaml --repeat 5 wandb.use False  # charlie tmux 5 gpu5  done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GPS/peptides-struct-GatedGCN+Exphormer+EdgeRWSE_directed_16_dim_32.yaml  --repeat 5 wandb.use False  # charlie tmux 6 gpu6 done

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/cifar10-GatedGCN+Exphormer+LapPE+EdgeRWSE_16_dim_32.yaml --repeat 5 wandb.use False  # *2 seeds
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/mnist-GatedGCN+Exphormer+EdgeRWSE_directed_16_dim_32.yaml --repeat 5 wandb.use False  # *3 seeds


# GRIT

CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GRIT/zinc-GRIT-RRWP.yaml  --repeat 5 wandb.use False  # *2 seeds done
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GRIT/cifar10-GRIT-RRWP.yaml --repeat 5  wandb.use False  # A40 tmux 0
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GRIT/mnist-GRIT-RRWP.yaml  --repeat 5 wandb.use False  # *2 seeds done
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GRIT/peptides-struct-GRIT-RRWP.yaml  --repeat 5 wandb.use False  #
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GRIT/peptides-func-GRIT-RRWP.yaml  --repeat 5 wandb.use False  # A40 tmux 3  running
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GRIT/mnist-GRIT-RRWP.yaml seed 5 wandb.use False

# new

# Exphormer baseline
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/Exphormer/pcqm-contact-GatedGCN+Exphormer.yaml  seed 1 wandb.use False  # charlie tmux 1 done
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/Exphormer/pcqm-contact-GatedGCN+Exphormer_bs_256.yaml  seed 2 wandb.use False # charlie tmux 0 done
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/Exphormer/cifar10-GatedGCN+Exphormer.yaml --repeat 3  wandb.use False  #  charlie tmux 2  done
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/Exphormer/mnist-GatedGCN+Exphormer.yaml  --repeat 3 wandb.use False  # charlie tmux 3  done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/Exphormer/peptides-struct-GatedGCN+Exphormer.yaml  --repeat 3 wandb.use False  # charlie tmux 4 done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/Exphormer/peptides-struct-GatedGCN+Exphormer.yaml  seed 4 wandb.use False  # charlie tmux 4  done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/Exphormer/peptides-func-GatedGCN+Exphormer.yaml  --repeat 3 wandb.use False  # charlie tmux 5 done
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/Exphormer/peptides-func-GatedGCN+Exphormer.yaml  seed 4 wandb.use False  # charlie tmux 5 done

# Exphormer
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/Exphormer/pcqm-contact-GatedGCN+Exformer_bs_256.yaml  seed 3 wandb.use False  # 4090 tmux 0
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/Exphormer/pcqm-contact-GatedGCN+Exformer_EdgeRWSE_undirected_16_dim_16_mlp.yaml --repeat 3 wandb.use False  # 4090 tmux 1
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/Exphormer/pcqm-contact-GatedGCN+Exformer_Hodge1Lap_projlow_15_pedim_16.yaml  --repeat 3 wandb.use False  # 4090 tmux 2

CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/Exphormer/cifar10-GatedGCN+Exphormer+LapPE+EdgeRWSE_16_dim_32_mlp.yaml  --repeat 3 wandb.use False  # 3090*2 tmux 1
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/Exphormer/mnist-GatedGCN+Exphormer+EdgeRWSE_directed_16_dim_32_mlp.yaml  --repeat 3 wandb.use False  # 3090*2 tmux 0

# GRIT
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GRIT/zinc-GRIT-RRWP+Hodge1Lap_projlow_5_3_8_pedim_24_0_0.yaml  --repeat 5 wandb.use False  # charlie tmux 6  running
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GRIT/zinc-GRIT-RRWP+EdgeRWSE_undirected_16_mlp_dim_24.yaml  --repeat 5 wandb.use False  # charlie tmux 7  running
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GRIT/zinc-GRIT-RRWP+Hodge1Lap_projlow_5_3_8_pedim_24_0_0.yaml  seed 5 wandb.use False  # charlie tmux 3  done
CUDA_VISIBLE_DEVICES=4 python main.py --cfg configs/GRIT/zinc-GRIT-RRWP+EdgeRWSE_undirected_16_mlp_dim_24.yaml  seed 5 wandb.use False  # charlie tmux 4  done

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GRIT/mnist-GRIT-RRWP+EdgeRWSE_directed_16_mlp_dim_24.yaml  --repeat 5 wandb.use False
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GRIT/zinc-GRIT-RRWP.yaml  seed 2 wandb.use False  # 4090 tmux 3 gpu 2 interrupted
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GRIT/zinc-GRIT.yaml  --repeat 3 wandb.use False  # charlie tmux 2

CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GRIT/peptides-func-GRIT-RRWP.yaml  seed 5 wandb.use False  #  OOM
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GRIT/peptides-func-GRIT-RRWP_small.yaml  seed 5 wandb.use False  # 83(4090*2) tmux 0
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GRIT/peptides-func-GRIT-RRWP_EdgeRWSE_undirected_16_pedim_32.yaml  --repeat 5 wandb.use False
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GRIT/peptides-func-GRIT-RRWP_EdgeRWSE_undirected_16_pedim_32_small.yaml  --repeat 5 wandb.use False  # 83(4090*2) tmux 1

# Inter-order
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS+InterRWSE_20_mlp_dim_28.yaml  --repeat 5 wandb.use False # charlie tmux 0
CUDA_VISIBLE_DEVICES=5 python main.py --cfg configs/GPS/zinc-GINE+InterRWSE_20_mlp_dim_28.yaml  --repeat 5 wandb.use False # charlie tmux 5

# PNA and GAT
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GAT+EdgeRWSE_undirected_20_mlp_dim28.yaml  --repeat 4 wandb.use False  # 89(4*3090) tmux 0
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/GPS/zinc-GAT+HodgeLap1PE_projlow_mlp_5_3_8_pedim_24_0_0.yaml  --repeat 4 wandb.use False  # 89(4*3090) tmux 1
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/GPS/zinc-PNA+EdgeRWSE_undirected_20_mlp_dim28.yaml  --repeat 4 wandb.use False  # 89(4*3090) tmux 2
CUDA_VISIBLE_DEVICES=3 python main.py --cfg configs/GPS/zinc-PNA+HodgeLap1PE_projlow_mlp_5_3_8_pedim_24_0_0.yaml  --repeat 4 wandb.use False  # 89(4*3090) tmux 3

# GRIT on zinc, comparison with other PE
CUDA_VISIBLE_DEVICES=6 python main.py --cfg configs/GRIT/zinc-GRIT-EdgeRWSE_undirected_16_mlp_dim_24.yaml  --repeat 4 wandb.use False  # charlie tmux 3
CUDA_VISIBLE_DEVICES=7 python main.py --cfg configs/GRIT/zinc-GRIT-Hodge1Lap_projlow_5_3_8_pedim_24_0_0.yaml  --repeat 4 wandb.use False  # charlie tmux 4
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GRIT/zinc-GRIT-RD.yaml  --repeat 4 wandb.use False  # charlie tmux 1

# SSWL
CUDA_VISIBLE_DEVICES=0 python main_zinc.py --dir 'zinc' --outdir 'result' --model SSWL_P --subset --max_dis 5 --epochs 400 --wd 0 --posenc 'HodgeLap1PE' --seed 1  # 4090 tmux 0
CUDA_VISIBLE_DEVICES=0 python main_zinc.py --dir 'zinc' --outdir 'result' --model SSWL_P --subset --max_dis 5 --epochs 400 --wd 0 --posenc 'EdgeRWSE' --seed 1  # 4090 tmux 3

# Node task
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/Exphormer/cs_EdgeRWSE_6hop_16_dim_36.yaml --repeat 4 wandb.use False
CUDA_VISIBLE_DEVICES=1 python main.py --cfg configs/Exphormer/cs_EdgeRWSE_6hop_16_dim_36.yaml seed 4 wandb.use False
CUDA_VISIBLE_DEVICES=2 python main.py --cfg configs/Exphormer/cs_EdgeRWSE_6hop_16_dim_36.yaml seed 5 wandb.use False

CUDA_VISIBLE_DEVICES=0 python main.py --dataset usa-airports --metric acc --hidden_features 100 --model 'GAT' --walk_time 0 --feature rw --rw_depth 2 --epoch 500 --bs 128 --test_ratio 0.1
CUDA_VISIBLE_DEVICES=1 python main.py --dataset usa-airports --metric acc --hidden_features 100 --model 'GAT' --walk_time 10 --feature rw --rw_depth 2 --epoch 500 --bs 128 --test_ratio 0.1


CUDA_VISIBLE_DEVICES=0 python main.py --dataset brazil-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 0 --feature rw --rw_depth 2 --epoch 500 --bs 128 --test_ratio 0.1
CUDA_VISIBLE_DEVICES=0 python main.py --dataset brazil-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 10 --feature rw --rw_depth 2 --epoch 1000 --bs 128 --layers 3 --test_ratio 0.1 --gpu 0

CUDA_VISIBLE_DEVICES=0 python main.py --dataset brazil-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 20 --feature rw --rw_depth 2 --epoch 1000 --bs 128 --layers 3 --test_ratio 0.1 --gpu 0
CUDA_VISIBLE_DEVICES=1 python main.py --dataset brazil-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 5 --feature rw --rw_depth 2 --epoch 1000 --bs 128 --layers 3 --test_ratio 0.1
CUDA_VISIBLE_DEVICES=1 python main.py --dataset brazil-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 5 --feature rw --rw_depth 2 --epoch 1000 --bs 128 --layers 2 --test_ratio 0.1
CUDA_VISIBLE_DEVICES=1 python main.py --dataset brazil-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 0 --feature rw --rw_depth 2 --epoch 1000 --bs 128 --layers 3 --test_ratio 0.1
CUDA_VISIBLE_DEVICES=1 python main.py --dataset brazil-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 5 --feature sp --epoch 1000 --bs 128 --layers 3 --test_ratio 0.1


CUDA_VISIBLE_DEVICES=2 python main.py --dataset europe-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 10 --feature rw --rw_depth 2 --epoch 1000 --bs 128 --layers 3 --test_ratio 0.1
CUDA_VISIBLE_DEVICES=3 python main.py --dataset europe-airports --metric acc --hidden_features 128 --model 'GAT' --walk_time 0 --feature rw --rw_depth 2 --epoch 1000 --bs 128 --layers 3 --test_ratio 0.1

