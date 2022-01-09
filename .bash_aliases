alias gti='git'
alias gitstore='git config --global credential.helper store'
#alias tmux='tmux -2'
alias less='less -R'
alias diff='colordiff'
alias dc='cd'
alias nethack-online='ssh nethack@nethack.alt.org ; clear'
alias tron-online='ssh sshtron.zachlatta.com ; clear'
alias glog='git log --oneline --graph --color --all --decorate'

alias bdae="btcpd -datadir=$HOME/.zcash"
alias bcli="btcp-cli -datadir=$HOME/.zcash"

alias ipp="curl icanhazip.com"
alias ufws="sudo ufw status numbered"
#ROOT ALIASES

# Reload the shell (i.e. invoke as a login shell with .bash_profile, which likely this file)
# switch -l to -i if you just want to reload this file
alias rebash="exec $SHELL -l"

# Nano this file, .inputrc or .nanorc
alias profile="sudo nano ~/.bashrc"
alias input="sudo nano ~/.inputrc"
alias nanorc="sudo nano ~/.nanorc"

# Display memory info totals
alias meminfo="free -m -l -t"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ "$DEBUG" == "TRUE" ]; then
echo "************** bash_aliases done ******************"
fi
