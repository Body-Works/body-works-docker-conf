#!/bin/bash

# Get the current directory name
current_dir=${PWD##*/}

# Create a tarball, excluding node_modules directories
tar -czvf "../${current_dir}.tar.gz" --exclude=node_modules --exclude=uploads ./*