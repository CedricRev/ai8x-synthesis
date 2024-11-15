#!/bin/sh
python quantize.py "../ai8x-training/logs/2024.11.15-151510/best.pth.tar" "../ai8x-training/logs/2024.11.15-151510/best_quantized.pth.tar" --device MAX78000 -v "$@"
