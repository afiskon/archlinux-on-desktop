#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

advice | cowsay

# don't close the shell on Ctr+D
set -o ignoreeof

alias yaourt='yaourt --noconfirm'
alias ls='ls --color=auto'
PS1='[\u@\h \w]\$ '

complete -W 'create types list start stop vnc ssh ssh-copy-id change-ports '\
'eject-disk delete rename clone export import' vm

export PGINSTALL=/home/eax/work/postgrespro/postgresql-install
export TMPDIR=/home/eax/temp
mkdir -p $TMPDIR

export PATH="/home/eax/bin:/home/eax/golang/bin:/home/eax/work/postgrespro/postgresql-install/bin:/home/eax/opt/arduino/hardware/tools/avr/bin:$PATH"
export EDITOR=vim
export HISTCONTROL=ignorespace
# for (simple) arduino.mk
export ARDUINODIR=/home/eax/opt/arduino

## For Arduino.mk
##############
## Directory where Arduino is installed
#export ARDUINO_DIR=/home/eax/opt/arduino
## Directory where you have copied the makefile
#export ARDMK_DIR=/usr/share/arduino/
## Directory where avr tools are installed
#export AVR_TOOLS_DIR=/home/eax/opt/arduino/hardware/tools/avr
##############

#export PAGER='vim -u ~/.vimrc.less -'
export PAGER='less -S'

alias less='less -x4'
#alias less="vim -u ~/.vimrc.less -"
#alias man='env PAGER=less man'
alias cal='cal -n 2'
alias rndc='find ./ -type f | egrep "\.c$" | shuffle | tail -n 1'
alias avrdude='avrdude -C /home/eax/opt/arduino/hardware/tools/avr/etc/avrdude.conf'

export GOPATH=~/golang
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/bin/virtualenvwrapper.sh

alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

#alias mutt_eaxme='mutt -e "source ~/.mutt/eaxme"'
#alias mutt_devzen='mutt -e "source ~/.mutt/devzen"'
#alias mutt_pgpro='mutt -e "source ~/.mutt/pgpro"'


alias lynx="lynx -display_charset=utf8"
alias www="lynx -dump"
alias gitlog='git log --graph --pretty=format:"%h  %ai  %an <%ae>  %s"'
alias gpg="gpg --keyserver pgp.mit.edu"
alias commitpush="git commit -am 'fix' ; git push origin HEAD"
alias shortlog="git log --pretty=format:'%h - %an, %ar : %s'"
alias rain="mplayer -loop 0 ~/data/heap/rain-and-thunder.mp3"
alias getvideo="youtube-dl -i -o '%(autonumber)s-%(title)s.%(ext)s'"
