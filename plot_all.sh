#!/usr/bin/env bash

# Plot the SDGM graphs with supervised GCN network
python -u run_dgm.py --dataset=spam --reduce_method=binary_prob --intervals=20 --overlap=0 --eps=0.01 --min_component_size=4 --sdgm=True
python -u run_dgm.py --dataset=cora --reduce_method=tsne --intervals=10 --overlap=0 --eps=0.10 --min_component_size=20 --sdgm=True
python -u run_dgm.py --dataset=pubmed --reduce_method=tsne --intervals=20 --overlap=0 --eps=0.01 --min_component_size=10 --sdgm=True
python -u run_dgm.py --dataset=citeseer --reduce_method=tsne --intervals=5 --overlap=0 --eps=0.01 --min_component_size=10 --sdgm=True

# Plot the SDGM graph with unsupervised lens (DGI network)
python -u run_dgm.py --dataset=cora --train_mode=unsupervised --reduce_method=tsne --intervals=20 \
                     --overlap=0 --eps=0.05 --min_component_size=8 --sdgm=True \

python -u run_dgm.py --dataset=citeseer --train_mode=unsupervised --reduce_method=tsne --intervals=20 \
                     --overlap=0 --eps=0.03 --min_component_size=8 --sdgm=True \