unamestr=$(uname -s)
#if [[ "$unamestr" == 'Linux' ]]
#then
#fi
alias ls='ls --color=auto --hide="*.o" --hide="*.d"'
PAGER=/usr/bin/less
alias cd='pushd >/dev/null'
alias bd='popd'
alias dirs='dirs -v'
alias ll='ls -l'
alias la='ls -a'
alias lal='ls -la'
alias rm='rm -i'
alias logdog='git log --decorate --oneline --graph'
alias cloc='~/cloc-1.56.pl'
alias vim='vim -w ~/.vim/keylog'
alias gvim='gvim -w ~/.vim/keylog 2>&1 > /dev/null'
alias metasymfind="cat - | awk '{ print \$1 }' | xargs symfind | awk 'BEGIN{FS=\"[\"} { print \$1 }' | sort | uniq | tr '\n' ' ' | sed -e 's/\(\b\S\)/-l\1/g' && echo \"\""
alias ack='ack --ignore-file=ext:d,dd'


# Map home and end keys
bind '"\e[1~": beginning-of-line'
bind '"\e[4~": end-of-line'

export HISTFILESIZE=5000          # Store 5000 commands in history
export HISTCONTROL=ignoredups    # Don't put duplicate lines in the history.

# Exports
export EDITOR=vim
export TERM=xterm

export PS1="[\[\e[0;31m\]\u\[\e[m\]@\[\e[0;35m\]\h \[\e[1;32m\]\w\[\e[m\]]\$ "


# User variables
codegrep() {
    if [[ $# -eq 0 ]]
    then
        echo "Usage: codegrep <pattern> "
    else
        grep -nT --colour \
            --exclude=tags \
            --exclude=*.o \
            --exclude=*.so \
            --exclude=*.tsk \
            --exclude=*.d \
            --exclude=*.dd \
            "$1" *
    fi
}

#ssh() {
    #echo "wut"
  #[[ -n "$INSCREEN" ]] && TERM=screen-256color
  #env ssh -t $*
  #$SCREEN_TITLE_CMD
#}

sshcd() {
    if [[ $# -lt 1 ]]
    then
        echo "Usage: sshcd <server> [<path>]"
    else
        ssh -t $LOGNAME@$1 "export SSHCDPATH=${path:-$(pwd)}; exec $BASH --login "
    fi
}

# Screen variables
function last2dirs {
    pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed 's# #/#'
}

#screen specific functionality
if [[ -n ${STY} ]]
then
    PROMPT_COMMAND='echo -ne "\033k$(hostname -s) $(last2dirs)\033\\";
                 history -a;'
fi

function dupscreen {
    screen bash -c "export SSHCDPATH=$PWD && exec $SHELL --login"
}

if [[ -e ~/.bbbashrc ]]
then
    source ~/.bashrc.local
fi
if [[ -e ~/.git-completion.bash ]]
then
    source ~/.git-completion.bash
fi
