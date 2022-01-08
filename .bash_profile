# console coloring for kool kids
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

echo "bash_profile RUN FIRST"

# if this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -n "$TMUX" ]; then
    echo "Tmux session detected"
    # called inside tmux session, do tmux things
    . ~/.profile

    
else

    # Trigger ~/.bashrc commands
    echo "this is bash_profile, running bash.rc"
    . ~/.bashrc
fi
