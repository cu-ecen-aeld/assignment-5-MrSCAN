#!/bin/bash

# Script to clean Buildroot using make distclean

# Navigate to the Buildroot directory
script_dir=$(dirname "$(readlink -f "$0")")
BUILDROOT_DIR="${script_dir}/buildroot"
cd "$BUILDROOT_DIR" || exit 1

# Run make distclean
make distclean
