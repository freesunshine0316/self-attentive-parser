
#python src/main.py train --use-words \
#    --use-chars-lstm \
#    --model-path-base models/en_charlstm \
#    --d-char-emb 64

CUDA_VISIBLE_DEVICES=6 python src/main.py train --lang "en" --use-chars-lstm \
    --model-path-base models/en_genia_charlstm_l4_aux \
    --train-path "data/ptb_genia_train.trees" \
    --dev-path "data/ptb_genia_dev.trees" \
    --num-layers 4 \
    --learning-rate 0.0008 \
    --batch-size 250 \
    --eval-batch-size 100 \
    --predict-tags

