if [ -n "$TMUX" ]; then
    echo "Tmux session detected"
    # called inside tmux session, do tmux things
    . ~/.profile

    
else

    # Trigger ~/.bashrc commands
    echo "this is bash_profile, running bash.rc"
    . ~/.bashrc
fi
