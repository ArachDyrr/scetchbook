#!/bin/bash

# Set the name of the Conda environment
conda_env_name="miw"

# Check if the Conda environment is already active
active_env=$(basename "$CONDA_PREFIX")

if [[ "$active_env" != "$conda_env_name" ]]; then
    echo "Activating the '$conda_env_name' Conda environment."
    conda activate "$conda_env_name"
else
    echo "The '$conda_env_name' Conda environment is already active."
fi

python ip_check.py