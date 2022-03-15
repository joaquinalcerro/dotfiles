# Directory aliases
alias ll='ls -lh --group-directories-first --color=auto'
alias lls='ll -S'
alias lld='ll -t'
alias lln='ll -s'
alias l='ll -A'
# alias fd="fdfind"

alias bs="cd ~/Downloads/Boostrap/theme-application/v4/"
alias ex="cd ~/ElixirDev"
alias hm="cd ~"
alias epr="cd ~/ElixirDev/production/epr"
alias epru="cd ~/ElixirDev/development/epr_umbrella"
alias mer="cd ~/ElixirDev/development/mercando_umbrella"
alias dev="cd ~/ElixirDev/development"
alias cls="clear"
# alias nvim="~/Applications/neovim/nvim.appimage"
alias ds="du --max-depth=1 -hc . | sort -hr"
alias tdc="tmux detach-client"
alias nvconf="~/.config/nvim"
alias i3conf="~/.config/i3"
alias lswifi="ifconfig wlan0 list scan"
alias dcup="docker-compose up"
alias dcdown="docker-compose down"
alias dss="sudo systemctl start docker.service"
alias notes="cd ~/CW/notes"
alias onivim="/home/jalcerro/Downloads/Onivim2-x86_64-master.AppImage"
# alias tm="tmux"
# alias sd="sudo swapoff -a && systemctl poweroff"
# alias tm="tmux -2 new-session -n 'DevIDE' \; split-window -d -p 20" 
alias tm="tmux new -s Main\; new-window -n 'code' \; new-window -n 'controllers' \; new-window -n 'contexts' \; new-window -n 'system' \; select-window -t code"
alias glog="git log --all --decorate --oneline --graph"

alias services='systemctl list-units --type=service --state=running'
# alias nvim="~/Downloads/nvim-linux64/bin/nvim"

alias ns="netstat -antpul"
