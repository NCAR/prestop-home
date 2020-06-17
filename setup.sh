#!/bin/bash

printf "Setting up ~prestop environment\n"

# find location of this running script
SCRIPT_DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0))  # https://stackoverflow.com/a/34208365/

# include utility functions
. $SCRIPT_DIR/script-support.sh


CURRENT_TIMESTAMP=`date +%F_%T`

[ ! -f ~/.bashrc ] || mv ~/.bashrc ~/.bashrc.${CURRENT_TIMESTAMP}
check_return_code "Error moving original ~/.bashrc to ~/.bashrc.${CURRENT_TIMESTAMP}"

cp $SCRIPT_DIR/bashrc ~/.bashrc
check_return_code "Error installing new ~/.bashrc"

[ ! -f ~/.ssh-help.sh ] || mv ~/.ssh-help.sh ~/.ssh-help.sh.${CURRENT_TIMESTAMP}
check_return_code "Error moving original ~/.ssh-help to ~/.ssh-help.${CURRENT_TIMESTAMP}"

cp $SCRIPT_DIR/ssh-help.sh ~/.ssh-help.sh
check_return_code "Error installing new ~/.ssh-help.sh"

printf "\nSetup of ~prestop completed succesfully\n"

printf "\nTo use your new environment, run:\n"
printf ". ~/.bashrc\n"
