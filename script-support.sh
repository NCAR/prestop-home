
#########################################################################
# Usage:  call this after a shell command if you want to make sure it succeeded, and exit with a message if it failed
# Example: 
# grep $user2install /etc/passwd >/dev/null
# check_return_code "Missing user: $user2install"
check_return_code() {
    if [ $? -ne 0 ]; then
	exit_with_message "$1"
    fi
}

#########################################################################
# Usage: Call this when you want to print a message and exit:
# Example: 
#if [ ! -d $installDir ]; then
#    exit_with_message "$installDir does not appear to be mounted on this system"
#fi

exit_with_message() {
    printf "EXITING  Error message is:   %s\n" "$1"
    exit 1
}


#########################################################################
# Usage: install a file and backup an existing file
# Example: install_file $SCRIPT_DIR/bashrc ~/.bashrc
install_file() {
    CURRENT_TIMESTAMP=`date +%F_%T`
    [ ! -f $2 ] || mv $2 $2.${CURRENT_TIMESTAMP}
    check_return_code "Error moving original $2 to $2.${CURRENT_TIMESTAMP}"

    cp $1 $2
    check_return_code "Error installing new $2"

    chmod 740 $2
    
}
    
#########################################################################
# Usage: helper functions to smartly add to path
# Example: PATH=$(path_append $PATH /my/bin)
    
path_append() {
    if [ -d "$2" ] && [[ ":$1:" != *":$2:"* ]]; then
        echo "${1:+"$1:"}$2"
    else
        echo "$1"
    fi
}

path_prepend() {
    if [ -d "$2" ] && [[ ":$1:" != *":$2:"* ]]; then
        echo "$2${1:+":$1"}"
    else
    	echo "$1"
    fi
}

#########################################################################
# find location of this running script
# usage:
# SCRIPT_DIR=$(get_script_dir)
get_script_dir() {
    SCRIPT_DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}" 2>/dev/null||echo $0))  # https://stackoverflow.com/a/34208365/
    echo $SCRIPT_DIR
}
