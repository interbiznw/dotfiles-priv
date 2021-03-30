alias gti='git'
#alias tmux='tmux -2'
alias less='less -R'
alias diff='colordiff'
alias dc='cd'
alias nethack-online='ssh nethack@nethack.alt.org ; clear'
alias tron-online='ssh sshtron.zachlatta.com ; clear'
alias glog='git log --oneline --graph --color --all --decorate'

alias bdae="btcpd -datadir=$HOME/.zcash"
alias bcli="btcp-cli -datadir=$HOME/.zcash"

getT(){
    bcli gettransaction "$1"
}
getRawT(){
    bcli getrawtransaction "$1"
}

alias ipp="curl icanhazip.com"
alias ufws="sudo ufw status numbered"
#ROOT ALIASES

banip() {
    #do things with parameters like $1 such as
    #mv "$1" "$1.bak"
    #iptables -A INPUT -s "$1" -j DROP
    sudo ufw deny from "$1" to any
}
unbanip() {
    #do things with parameters like $1 such as
    #mv "$1" "$1.bak"
    #iptables -D INPUT -s "$1" -j DROP
    sudo ufw status numbered
}
