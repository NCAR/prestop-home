#!/bin/bash

printf "Setting up ${HOME} environment\n"

# find location of this running script
SCRIPT_DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0))  # https://stackoverflow.com/a/34208365/

# include utility functions
. $SCRIPT_DIR/script-support.sh


install_file $SCRIPT_DIR/script-support.sh ~/.script-support.sh
install_file $SCRIPT_DIR/bashrc ~/.bashrc  
install_file $SCRIPT_DIR/ssh-help.sh ~/.ssh-help.sh
install_file $SCRIPT_DIR/needed_env_vars.RAP.sh ~/.needed_env_vars.RAP.sh

printf "\nSetup of ${HOME} completed succesfully\n"

printf "\nTo use your new environment, run:\n"
printf ". ~/.bashrc\n"
