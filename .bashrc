if [[ $- != *i* ]] ; then
	return
fi

xhost +local:root > /dev/null 2>&1
complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize
shopt -s expand_aliases
# Enable history appending instead of overwriting.  #139609
shopt -s histappend

######################
## mes alias

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias nano='nano -c'
alias phpcs='clear;phpcs --colors -v'
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias ll='ls -ahl'
alias svnst='svn st | grep -v ?'
alias svnd='svn diff | colordiff'
alias svnda='svn diff "$1" | colordiff'
alias svnra='svn revert -R .'
alias public_key_gen='ssh-keygen -y -f "$1" > "$2"'
alias untargz='tar -zxvf "$1"'


######################
## mes export
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"
export EDITOR=nano
export SVN_EDITOR=nano
export LANG=fr_FR.UTF-8
export LC_ALL=fr_FR.UTF-8
export PS1='\[\033[00;35m\][\[\033[00;31m\]\u@\h\[\033[00;32m\] \w \[\033[01;34m\]\t\[\033[00;35m\]]\$\[\033[00m\] '
export PATH=$PATH:/home/sango/.gem/ruby/2.3.0/bin
export MY_SSH_KEY=/home/sango/.ssh/id_rsa

#rdesktop -g 1900*1200 192.168.80.17
#xelatex cv_13.tex
