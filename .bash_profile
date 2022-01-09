# console coloring for kool kids
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ -f ~/.bash-debug_true ]; then
    echo "echoing debugging strings"
    export DEBUG="TRUE"
fi

export DEBUG="FALSE"

if [ $DEBUG == "TRUE" ]; then
    echo "bash_profile RUN FIRST"
fi

# if this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -n "$TMUX" ]; then

    if [ $DEBUG == "TRUE" ]; then
      echo "Tmux session detected, running .profile instead of .bashrc"
    fi
    
  # called inside tmux session, do tmux things
  . ~/.profile

else

# Trigger ~/.bashrc commands
    if [ $DEBUG == "TRUE" ]; then
      echo "this is bash_profile, running bash.rc"
    fi
  . ~/.bashrc
fi
