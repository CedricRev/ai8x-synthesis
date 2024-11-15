#!/bin/sh
DEVICE="MAX78000"
TARGET="D:/MaximSDK/Examples/$DEVICE/CNN"
COMMON_ARGS="--device $DEVICE --timer 0 --display-checkpoint --verbose" 
QUANTIZED_MODEL = "../ai8x-training/logs/2024.11.15-151510/best_quantized.pth.tar"
YAML = "networks/cats-dogs-hwc.yaml"

python ai8xize.py --test-dir $TARGET --prefix cats-dogs_gen --overwrite --checkpoint-file $QUANTIZED_MODEL --config-file $YAML --fifo --softmax $COMMON_ARGS "$@"
