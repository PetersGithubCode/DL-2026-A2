#!/bin/bash
set -e

PYTHON=/home/ec2-user/anaconda3/envs/python3/bin/python

echo "Installing dependencies into:"
echo "$PYTHON"

$PYTHON -m pip install -U \
    torch \
    numpy \
    pandas \
    matplotlib \
    scikit-learn \
    transformers \
    datasets

echo ""
echo "Verifying installation..."

$PYTHON -c "
import torch
import numpy
import pandas
import matplotlib
import sklearn
import transformers
import datasets

print('All packages loaded successfully')
print('PyTorch:', torch.__version__)
print('CUDA available:', torch.cuda.is_available())
print('CUDA version:', torch.version.cuda)
"