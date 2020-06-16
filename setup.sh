#!/bin/bash

printf "Setting up ~prestop environment\n"

# find location of this running script
SCRIPT_DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0))  # https://stackoverflow.com/a/34208365/

# include utility functions
. $SCRIPT_DIR/script-support.sh



[ ! -f ~/.bashrc ] || mv ~/.bashrc ~/.bashrc-original
check_return_code "Error moving original ~/.bashrc to ~/.bashrc-original"

cp ./.bashrc ~/.bashrc
check_return_code "Error installing new ~/.bashrc"


printf "Setup of ~prestop completed succesfully\n"

printf "To use your new environment, run:\n"
printf ". ~/.bashrc\n"
