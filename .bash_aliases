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

getT(){
    bcli gettransaction "$1"
}
getRawT(){
    bcli getrawtransaction "$1"
}
decoderawtx(){
    bcli decoderawtransaction "$1"
}

alias ipp="curl icanhazip.com"
alias ufws="sudo ufw status numbered"
#ROOT ALIASES
ta(){
    tmux attach -t "$1"
}
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
    sudo ufw delete "$1"
}
tails() {
    tail -f $1 | perl -pe 's/'$2'/\e[1;32;40m$&\e[0m/g'
}

transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip";(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://xfr.anonpasta.rocks/$file_name"|tee /dev/null;echo " << download zip file";else cat "$file"|curl --progress-bar --upload-file "-" "https://xfr.anonpasta.rocks/$file_name"|tee /dev/null;echo " << download file";fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://xfr.anonpasta.rocks/$file_name"|tee /dev/null;echo " << download zip file";fi;}

