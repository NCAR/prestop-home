#!/bin/bash

printf "Setting up ~prestop environment\n"

# find location of this running script
SCRIPT_DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0))  # https://stackoverflow.com/a/34208365/

# include utility functions
. $SCRIPT_DIR/script-support.sh


[ ! -f ~/.bashrc ] || mv ~/.bashrc ~/.bashrc-original
check_return_code "Error install .bashrc"


print "Setup of ~prestop completed succesfully\n"
