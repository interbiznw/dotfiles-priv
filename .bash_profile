if [ -n "$TMUX" ]; then
    # called inside tmux session, do tmux things
    . ~/.profile
    echo "Tmux session detected"

fi
# Trigger ~/.bashrc commands
echo "this is bash_profile, running bash.rc"
. ~/.bashrc

