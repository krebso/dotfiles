alias gcp="g++ -std=c++14"
alias sqlmap="python3 ~/hacking/tools/sqlmap/sqlmap.py"
# alias python="/usr/local/bin/python3"
alias p="/usr/local/bin/python3"
alias n="nvim"
alias nset="nvim ~/.config/nvim/init.vim"
alias aisa="ssh xkrebs@aisa.fi.muni.cz"
alias tkill="tmux kill-session;clear"
alias mypy="mypy --strict"
alias jupyter="jupyter-lab"
alias black="black -l 79"
alias ghciw="ghci -Wall"
alias l="ls"
alias s="ls"
alias sl="ls"
alias lsl="ls"
alias sls="ls"
alias ccko="gcc -std=c99 -pedantic -Wall -Werror -Wextra"
alias kontrgrind='valgrind --track-origins=yes --leak-check=full --track-fds=yes'

alias ls='ls --color'
alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=cxgxfxexbxegedabagacad

export PS1='\u@stokahontas:\[\e[33m\]\w\[\e[0m\]\$ '
export EDITOR='nvim'

function welcome() {
    cd;
    tmux --attach || tmux;
    return 1;
}

welcome
