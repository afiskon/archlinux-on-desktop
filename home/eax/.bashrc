#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

advice | cowsay

alias ls='ls --color=auto'
PS1='[\u@\h \w]\$ '

complete -W 'create types list start stop vnc ssh ssh-copy-id change-ports '\
'eject-disk delete rename clone export import' vm

export PAGER=/usr/bin/less
export TMPDIR=/home/eax/temp
mkdir -p $TMPDIR

export PATH="/home/eax/bin:/home/eax/work/postgrespro/postgresql-install/bin:/home/eax/opt/arduino/hardware/tools/avr/bin:$PATH"
export EDITOR=vim
export HISTCONTROL=ignorespace
# for arduino.mk
export ARDUINODIR=/home/eax/opt/arduino

alias cal='cal -n 2'
alias rndc='find ./ -type f | egrep "\.c$" | shuffle | tail -n 1'
alias avrdude='avrdude -C /home/eax/opt/arduino/hardware/tools/avr/etc/avrdude.conf'

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/bin/virtualenvwrapper.sh

alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'

alias mutt_eaxme='mutt -e "source ~/.mutt/eaxme"'
alias mutt_devzen='mutt -e "source ~/.mutt/devzen"'
alias mutt_pgpro='mutt -e "source ~/.mutt/pgpro"'

alias less='less -x4'

alias lynx="lynx -display_charset=utf8"
alias www="lynx -dump"
alias gitlog='git log --graph --pretty=format:"%h  %ai  %an <%ae>  %s"'
alias gpg="gpg --keyserver pgp.mit.edu"
alias commitpush="git commit -am 'fix' ; git push origin HEAD"
alias rain="mplayer -loop 0 ~/data/heap/rain-and-thunder.mp3"
alias getvideo="youtube-dl -i -o '%(autonumber)s-%(title)s.%(ext)s'"
