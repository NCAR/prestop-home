# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# figure out what kind of linux this is
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

# echo Installing bashrc for ${machine}


# Add anaconda to the path
# export PATH=/usr/local/anaconda3/bin${PATH:+:$PATH}

# Add rap binaries
export PATH=/rap/bin${PATH:+:$PATH}

# TODO: check if these dirs exist before adding them?  I think they only exist on mac
if [ $machine = "Mac" ]
then
  echo "doing Mac specific stuff..."
  export PATH=/Users/prestop/bin${PATH:+:$PATH}
  export PATH=/opt/local/bin${PATH:+:$PATH}

  export PATH=/usr/local/krb5/bin${PATH:+:$PATH}
  export PATH=/usr/local/ossh/bin${PATH:+:$PATH}

  function locate() {
      mdfind -name $1
      }
fi

# add ConfigMaster to PYTHONPATH
export PYTHONPATH=${PYTHONPATH:+$PYTHONPATH:}${HOME}/git/ConfigMaster

# for CVS
export CVSROOT=:pserver:prestop@cvs.rap.ucar.edu:/cvs



# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


echo "setting prestop's environment from ${HOME}/.bashrc"


export EDITOR="emacs -nw"

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
else
   export CLICOLOR=1
   export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx    
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi



function paul_cvs () { command cvs -d :pserver:prestop@cvs.rap.ucar.edu:/cvs "$@";  }
function pcvs () { command cvs -d :pserver:prestop@cvs.rap.ucar.edu:/cvs "$@";  }


function catw {
    cat `which $1`
    }
    
# search .c .cc .h and .hh files
serc () { command find $1 -name "*.[c|h]" -o -name "*.cc" -o -name "*.hh" | \
          xargs egrep -n $2 | more; }

# search just headers      
serch () { command find $1 -name "*.h" -o -name "*.hh" | \
          xargs egrep -n $2 | more; }

# search all files
sercall () { command find $1 -name "*" | xargs egrep -n $2 | more; }

# search .py files
sercpy () { command find $1 -name "*.[py]" | xargs egrep -n $2 | more; }

psg () { command ps axww | sed -n "1p; \|sed .*/$@/|d; /$@/p";  }
pslg () { command ps alxww | sed -n "1p; \|sed .*/$@/|d; /$@/p";  }
psug () { command ps auxww | sed -n "1p; \|sed .*/$@/|d; /$@/p";  }




function strerror ()
{
printf "[possible perl errno message]\n";
perl -e '$!='${1}'; print "$!\n";';
printf "[possible errno messages from /usr/include/*errno*.h]\n";
find /usr/include -name '*errno*.h' -print0 | xargs -0 grep '^[[:space:]]*#define[[:space:]]\+[[:upper:]_]\+[[:space:]]\+'${1}'[[:space:]]';
printf "[possible /usr/include/sysexits.h exit codes]\n";
grep '^[[:space:]]*#define[[:space:]]\+[[:upper:]_]\+[[:space:]]\+'${1}'[[:space:]]' /usr/include/sysexi
ts.h
}

# git helper functions
function git_update_submodules()
{
git submodule foreach --recursive git pull origin master
}

# create some ssh helper functions
. ~/.ssh-help.sh

