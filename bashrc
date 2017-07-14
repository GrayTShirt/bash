#!/bin/bash

type vim >/dev/null 2>&1
if [[ $? == 0 ]] ; then
	export EDITOR=vim
fi
export HISTSIZE=50000
export HISTTIMEFORMAT="%s "
export PS1="\e[43;97m\t \e[0m\e[42;33m \e[0m\e[42;97m\u@\H \e[0m\e[41;32m \e[0m\e[41;97m$? \e[0m\e[44;31m \e[0m\e[44;97m\w \e[0m\e[49;34m\e[0m\n \e[36m>\e[0m "
if [[ -d ${HOME}/.bin ]] ; then
	export PATH="${PATH}:${HOME}/.bin"
else
	exit 0
fi
#      
type git >/dev/null 2>&1
if [[ $? == 0 ]] ; then
	unset  PS1
	if [[ ${EUID} == 0 ]] ; then
		export PSGIT="\[\e[43;97m\] \t \[\e[0m\]\[\e[47;33m\]\[\e[0m\]\[\e[45;37m\]\[\e[0m\]\[\e[45;97m\] \u@\H \[\e[0m\]\[\e[47;35m\]\[\e[0m\]\[\e[41;37m\]\[\e[0m\]\[\e[41;97m\] \$? \[\e[0m\]\[\e[44;31m\] \[\e[0m\]\[\e[44;97m\]\w \[\e[0m\]\[\e[47;34m\]\[\e[0m\]%{%[\e[47;30m%]  %[\e[0m%]%[\e[47;32m%]%b%[\e[0m%]%[\e[47;30m%]:%[\e[0m%]%[\e[47;33m%]%i%[\e[0m%]%}%{%[\e[47;31m%]%c%u%f%t%[\e[0m%]%}\[\e[49;37m\]\[\e[0m\]\r\n \[\e[36m\]\[\e[0m\] "
	else
		export PSGIT="\[\e[43;97m\] \t \[\e[0m\]\[\e[47;33m\]\[\e[0m\]\[\e[42;37m\]\[\e[0m\]\[\e[42;97m\] \u@\H \[\e[0m\]\[\e[47;32m\]\[\e[0m\]\[\e[41;37m\]\[\e[0m\]\[\e[41;97m\] \$? \[\e[0m\]\[\e[44;31m\] \[\e[0m\]\[\e[44;97m\]\w \[\e[0m\]\[\e[47;34m\]\[\e[0m\]%{%[\e[47;30m%]  %[\e[0m%]%[\e[47;32m%]%b%[\e[0m%]%[\e[47;30m%]:%[\e[0m%]%[\e[47;33m%]%i%[\e[0m%]%}%{%[\e[47;31m%]%c%u%f%t%[\e[0m%]%}\[\e[49;37m\]\[\e[0m\]\r\n \[\e[36m\]\[\e[0m\] "
	fi
	export PROMPT_COMMAND='export PS1=$($HOME/.bin/gitprompt c=\+ u=\* statuscount=1)'
fi
