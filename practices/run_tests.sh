#!/bin/bash

# tests all the practices
root = $(pwd)

for dir in practices/*; do
    # go into the dir
    cd $dir
    
    # run the install script
    chmod +x install.sh
    bash install.sh

    # activate the virtual environment
    source venv/bin/activate

    # test the script
    python test.py

    # deactivate the virtual environment
    deactivate

    # cleanup
    rm -rf venv

    # go back to the root dir
    cd $root

done