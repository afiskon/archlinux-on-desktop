#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \w]\$ '

export PATH="/home/eax/bin:/home/eax/work/postgrespro/postgresql-install/bin:$PATH"
export EDITOR=vim

#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh

alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

alias less='less -x4'

alias lynx="lynx -display_charset=utf8"
alias www="lynx -dump"
alias gitlog='git log --graph --pretty=format:"%h  %ai  %an <%ae>  %s"'
alias commitpush="git commit -am 'fix' ; git push origin HEAD"
