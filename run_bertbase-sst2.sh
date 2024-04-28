export XPU_ZEBU_MODE="1"
# unset CUDA_VISIBLE_DEVICES
export BKCL_RING_BUFFER_GM="1"
export FLAGS_call_stack_level=2
# export FLAGS_dynamic_static_unified_comm=False
# export GLOG_v=10
# export CUDA_VISIBLE_DEVICES=2,3,0,1,4,5,6,7
export CUDA_VISIBLE_DEVICES=0,1
# export CUDA_VISIBLE_DEVICES=0,1
# export XPUAPI_DEBUG=0x1
# export CUDA_VISIBLE_DEVICES=2,3
# export BKCL_DEBUG=1
# python -u -m paddle.distributed.launch --gpus "0" model_zoo/bert/static/run_glue.py \
python -u -m paddle.distributed.launch model_zoo/bert/static/run_glue.py \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --task_name SST-2 \
    --max_seq_length 128 \
    --batch_size 32   \
    --learning_rate 2e-5 \
    --num_train_epochs 3 \
    --logging_steps 1 \
    --save_steps 500 \
    --output_dir ./tmp/ \
    --device xpu #\
#> ./log/bert-base-uncased-SST-2-1_card-all-2.log 2>&1 &