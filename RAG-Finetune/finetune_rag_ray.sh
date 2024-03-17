# Start a single-node Ray cluster.
ray start --head

# A sample finetuning run, you need to specify data_dir, output_dir and model_name_or_path
# run ./examples/rag/finetune_rag_ray.sh --help to see all the possible options

python finetune_rag.py \
    --data_dir '/root/autodl-tmp/rag-end2end-retriever/DIR/data/gen' \
    --output_dir '/root/autodl-tmp/final_contiue' \
    --model_name_or_path '/root/autodl-tmp/final/checkpoint5' \
    --model_type rag_token \
    --fp16 \
    --gpus 1\
    --profile \
    --do_train \
    --do_predict \
    --n_val -1 \
    --train_batch_size 10 \
    --eval_batch_size 1 \
    --max_source_length 512 \
    --max_target_length 512 \
    --val_max_target_length 512 \
    --test_max_target_length 512 \
    --label_smoothing 0.1 \
    --dropout 0.1 \
    --attention_dropout 0.1 \
    --weight_decay 0.001 \
    --adam_epsilon 1e-08 \
    --max_grad_norm 0.1 \
    --lr_scheduler polynomial \
    --learning_rate 2e-05 \
    --num_train_epochs 4 \
    --warmup_steps 500 \
    --gradient_accumulation_steps 1 \
    --index_name 'custom'\
    --passages_path '/root/autodl-tmp/rag-end2end-retriever/DIR/baiduzhidao/squad2w' \
    --index_path '/root/autodl-tmp/rag-end2end-retriever/DIR/baiduzhidao/squad2w.faiss'\
    --distributed_retriever ray \
    --num_retrieval_workers 4   \
    --num_workers 2

# Stop the Ray cluster.
ray stop