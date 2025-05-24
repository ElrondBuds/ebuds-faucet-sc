#!/bin/bash

# Install required packages
apt-get update
apt-get install -y build-essential pkg-config libssl-dev

# Install mxpy (MultiversX SDK)
wget -O mxpy-up.py https://raw.githubusercontent.com/multiversx/mx-sdk-py-cli/main/mxpy-up.py
python3 mxpy-up.py
source ~/.profile

# Verify installations
cargo --version
mxpy --version