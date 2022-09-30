PROMPT="%{$fg_bold[green]%}%n@%~/ %B%F{51}➜%f%b "

# Detect which `ls` flavor is in use
export CLICOLOR=1
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:*.tar=1;31:*.gz=1;31:*.tbz2=1;31"
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# List all files colorized in long format
alias l="ls -lF ${colorflag}"
# List all files colorized in long format, excluding . and ..
alias la="ls -lAF ${colorflag}"
# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
# Always use color output for `ls`
alias ls="command ls ${colorflag}"
# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

alias tml="tmux list-sessions"
alias tmn="tmux new-session -s $1"
alias tma="tmux -2 attach -t $1"
alias tmk="tmux kill-session -t $1"
alias note='vi ~/Dropbox/worknotes/feedmob/2021.md'
alias be='bundle exec'
alias loginserver='ssh clark@clark.feedmob.info'
alias loginvpn='ssh -D 1080 deploy@52.196.73.210'

alias ip="curl https://ipinfo.io/json"
alias localip="ipconfig getifaddr en0"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# Get macOS Software Updates, Homebrew, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup;'
