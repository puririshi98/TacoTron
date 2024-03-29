mkdir -p output
python -m multiproc train.py -m Tacotron2 -o ./output/ -lr 1e-3 --epochs 1500 -bs 80 --weight-decay 1e-6 --grad-clip-thresh 1.0 --cudnn-benchmark=True --log-file ./output/nvlog.json --anneal-steps 500 1000 1500 --anneal-factor 0.1 --load-mel-from-disk True
