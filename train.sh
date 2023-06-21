## Select a problem and run the training script
python train.py \
    --problem wmt32k \
    --output_dir ./output \
    --data_dir ./wmt32k_data

python train.py \
    --problem lm1b \
    --output_dir ./output \
    --data_dir ./lm1b_data