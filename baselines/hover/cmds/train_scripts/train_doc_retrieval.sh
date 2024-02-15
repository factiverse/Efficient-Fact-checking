claim_name=$1

if [ "$2" = "modified" ]; then
    python3 run_hover.py \
    --dataset_name $claim_name \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --sub_task doc_retrieval \
    --do_train \
    --do_eval \
    --do_lower_case \
    --per_gpu_train_batch_size 2 \
    --learning_rate 3e-5 \
    --num_train_epochs 5.0 \
    --evaluate_during_training \
    --output_dir exp1.0 \
    --max_seq_length 200  \
    --max_query_length 60 \
    --gradient_accumulation_steps 2  \
    --max_steps 2000 \
    --modified
else
    python3 run_hover.py \
    --dataset_name $claim_name \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --sub_task doc_retrieval \
    --do_train \
    --do_eval \
    --do_lower_case \
    --per_gpu_train_batch_size 2 \
    --learning_rate 3e-5 \
    --num_train_epochs 5.0 \
    --evaluate_during_training \
    --output_dir exp1.0 \
    --max_seq_length 200  \
    --max_query_length 60 \
    --gradient_accumulation_steps 2  \
    --max_steps 2000
fi