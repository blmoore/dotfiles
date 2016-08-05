# dotbashrc
# <sys specific stuff omitted>

# colour fixes
export CLICOLOR=1
export TERM=xterm-256color
export EDITOR=emacs
export HISTTIMEFORMAT="%T "

# ev :: emacs view (open file on read-only mode)
ev() {
  emacs "$1" --eval '(setq buffer-read-only t)'
}

# prevent ctrl+s interrupt
if [ -t 0 ]; then
    stty -ixon
 fi
 
# eternal history per https://www.debian-administration.org/article/543/Bash_eternal_history
export HISTTIMEFORMAT="%s "
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo $$ $USER \
               "$(history 1)" >> ~/.bash_eternal_history'
               
# typos
alias grpe='grep'
alias sl='ls'
alias more='less -S'
alias mroe='less -S'
alias ,pre='less -S'
alias rysnc='rsync'

# use these they're way better
alias top="htop"
alias man="pinfo -m"

# PS1
export PROMPT_DIRTRIM=2
export PS1="\[\033[01;90m\]\w\$\[\033[0m\] "
