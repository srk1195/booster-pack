# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Git 
alias gs='git status'
alias gsb='git status -sb'
alias gaa='git add --all'
alias gc='git commit -m $2'
alias gcm="git checkout main"
alias gp='git push'
alias gpom='git push origin main'
alias gphm="git push heroku master"
alias gpl='git pull'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias branches="git branch -a"
alias remotes="git remote -v"
alias git_config="git config --list"

# Docker aliases
alias dcs="docker ps -a"
alias dis="docker images"

# Package Managers
alias sap="sudo apt update"
alias sad="sudo apt upgrade"
alias sau="sudo apt update && sudo apt upgrade"

# Utilities
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Surfshark VPN commands
alias vpn-help="sudo surfshark-vpn help"
alias vpn-status="sudo surfshark-vpn status"
alias vpn-up="sudo surfshark-vpn"
alias vpn-near="sudo surfshark-vpn attack"
alias vpn-down="sudo surfshark-vpn down"
alias ip-loc="curl -s https://ipinfo.io/$(curl -s https://ipinfo.io/ip) | egrep -i 'City|region|country|timezone|ip' "

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
