#!/bin/bash

echo "[INFO] Updating conda..."
conda update --yes conda

echo "[INFO] Creating conda environment..."
conda create --yes --name vision python=3.9
eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"

echo "[INFO] Activating conda environment..."
conda activate vision

echo "[INFO] Python version:"
python --version

echo "[INFO] Updating pip..."
pip3 install --upgrade pip

echo "[INFO] Installing dependencies..."
pip3 install -r "$PWD"/requirements.txt --no-cache-dir
ipython kernel install --user --name=vision

echo "[INFO] Setup Done."