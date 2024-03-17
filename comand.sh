
# baselines

CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GPS.yaml --repeat 5 wandb.use False &\
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GINE+RWSE.yaml  --repeat 5 wandb.use False &\

# commands to run the experiments, replace the cfg file with the corresponding one
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GINE+RWSE+EdgeRWSE_directed.yaml  --repeat 5 wandb.use False &\
CUDA_VISIBLE_DEVICES=0 python main.py --cfg configs/GPS/zinc-GINE+RWSE+HodgeLap1PE_projlow.yaml  --repeat 5 wandb.use False &\



