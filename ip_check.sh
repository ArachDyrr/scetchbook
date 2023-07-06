#!/bin/bash

active_env=$(basename "$VIRTUAL_ENV")
if [[ "$active_env" != "" ]]; then
    echo "The virtual environment $active_env is active."
else
    echo "A virtual environment is being spun up and closed to execute this task in the background."
    source /Users/stephandekker/.local/share/virtualenvs/sketchbook-Uymnf8Ig/bin/activate
fi


python ip_check.py