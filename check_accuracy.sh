#!/bin/bash

CUDA_VISIBLE_DEVICES=0 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try305 &
CUDA_VISIBLE_DEVICES=1 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try307 &
CUDA_VISIBLE_DEVICES=2 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try312 &
CUDA_VISIBLE_DEVICES=3 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try305 --compute-interval 20 &
CUDA_VISIBLE_DEVICES=0 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try307 --compute-interval 20 &
CUDA_VISIBLE_DEVICES=1 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try312 --compute-interval 20 &
CUDA_VISIBLE_DEVICES=2 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try305 --is_inference_model &
CUDA_VISIBLE_DEVICES=3 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try307 --is_inference_model &
CUDA_VISIBLE_DEVICES=0 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try312 --is_inference_model &
CUDA_VISIBLE_DEVICES=1 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try305 --compute-interval 20 --is_inference_model &
CUDA_VISIBLE_DEVICES=2 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try307 --compute-interval 20 --is_inference_model &
CUDA_VISIBLE_DEVICES=3 ./test.sh --model_name 'reuse' --fps 2 --reuse_model_name msrvtt/try312 --compute-interval 20 --is_inference_model &

wait
