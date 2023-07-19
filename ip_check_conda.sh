#!/bin/bash

# # ## use conda env list to find the path to the conda environment
# # conda_env_path=$(conda env list | grep DD | awk '{print $2}')
# # echo "conda_env_path: $conda_env_path"

# conda_env_path="/Users/stephandekker/miniconda3/envs/DD"

# active_env=$(basename "$VIRTUAL_ENV")
# if [[ "$active_env" != "DD" ]]; then
#     echo "Activating the 'DD' conda environment."
#     source "$conda_env_path/bin/activate"
# else
#     echo "The 'DD' conda environment is already active."
# fi

# python ip_check.py

#!/bin/bash

# Set the path to the conda executable
conda_path="/Users/stephandekker/miniconda3/bin/conda"

# Set the name of the Conda environment
conda_env_name="DD"

# Check if the environment is already active or not
active_env=$(basename "$CONDA_PREFIX")


if [[ "$active_env" != "$conda_env_name" ]]; then
    echo "Activating the '$conda_env_name' conda environment."
    "$conda_path" activate "$conda_env_name"
else
    echo "The '$conda_env_name' conda environment is already active."
fi

# Now, run the Python script using the activated environment
python ip_check.py