device=cuda:0
pe_name=wave
batch_size=128
num_layer=2
num_epoch=200
num_head=4
norm=batch
emb_dim=84
num_task=11
dropout=0.25
residual=1
num_cluster=10
attn_dropout=0.5
local_gnn_type=CustomGatedGCN
global_model_type=Transformer
pos_dim=8
version=custom
gnn_type=gine # only used fo
seed=1
python3 train_peptides_struct.py --seed=$seed --device=$device --pe_name=$pe_name --batch_size=$batch_size --num_layer=$num_layer \
                                --num_epoch=$num_epoch --num_head=$num_head --norm=$norm --emb_dim=$emb_dim --num_task=$num_task --dropout=$dropout \
                                --residual=$residual --num_cluster=$num_cluster --attn_dropout=$attn_dropout --local_gnn_type=$local_gnn_type \
                                --global_model_type=$global_model_type --pos_dim=$pos_dim --version=$version --gnn_type=$gnn_type 