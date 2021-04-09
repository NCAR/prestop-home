
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
# Usage: install a file and backup an existing file, fails silently if $1 doesn't exist
# Example: safe_install_file $SCRIPT_DIR/bashrc ~/.bashrc
safe_install_file() {
   if [ -f $1 ]; then
       install_file $1 $2
   fi
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


#########################################################################
# simple checks from sdowdy

is_session_in_script() { [ "$(ps -o comm= -p $PPID)" = "script" ] ;}      # XXX only checks one level
is_session_in_screen() { [ -n "${WINDOW}" ] || [ -n "${TMUX_PANE}" ] ;}
is_shell_interactive() { [ "${-%i*}" != "${-}" ] ;}
is_shell_login()       { builtin shopt -q login_shell ;}  # XXX this is BASH specific.
is_os_linux() { [ "$(uname -s)" = "Linux" ] ;}
is_os_darwin() { [ "$(uname -s)" = "Darwin" ] ;}
is_os_macos() { [ "$(uname -s)" = "Darwin" ] ;}




####################################################################################
###  BELOW HERE ---  Not really script support, but useful interactive functions
####################################################################################


#########################################################################
# Show all the permissions up to root from a directory
# usage:
#  chpp ~/this/dir
chpp () {
    local obj objlink
    obj="$(echo "${1:?Must specify a file or directory}" | sed -e 's-//*-/-g;\-^/$-{q;};s-/$--')" 
    [ ! -e "${obj}" ] && { echo "ENOEXIST ${obj}"; return 1 ;}
    [ -z "${obj%%/*}" ] || obj="$(pwd)/${obj}"
    while [ -e "${obj}" ]; do
        objlink="$(readlink "${obj}")"
        stat --format "%-12A %-12U %-12G %n${objlink:+ (->${objlink})}" "${obj}"
        [ -L "${obj}" ] && chpp "$(readlink -e ${obj})" | sed -e 's/^/  /'
        [ "${obj}" = "/" ] && break
        obj="${obj%/*}"; obj="${obj:-/}"
    done
}

#########################################################################
# check if latest version of cron is installed
# usage:
# check_cron
# check_cron ~/crontab.now
check_cron() {
cron_file=${1:-$HOME/crontab}
crontab -l | diff - $cron_file
if [ $? = 0 ]; then
	echo $cron_file matches the installed crontab
fi
}


#########################################################################
# get current git branch
# usage:
# git_branch
# gb=`git_branch` && echo $gb
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
