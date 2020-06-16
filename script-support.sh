

# Usage:  call this after a shell command if you want to make sure it succeeded, and exit with a message if it failed

# grep $user2install /etc/passwd >/dev/null
# check_return_code "Missing user: $user2install"
check_return_code() {
    if [ $? -ne 0 ]; then
	exit_with_message "$1"
    fi
}

# Usage: Call this when you want to print a message and exit:

#if [ ! -d $installDir ]; then
#    exit_with_message "$installDir does not appear to be mounted on this system"
#fi

exit_with_message() {
    printf "EXITING  Error message is:   %s\n" $1
    exit 1
}


