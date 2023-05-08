#!/bin/sh
alias zshrc='vim ~/.zshrc'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# python configuration
alias python='python3.10'
alias pip='pip3.10'

# colorize ls output
case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

*)
	# echo 'Other OS'
	;;
esac
