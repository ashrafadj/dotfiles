#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# Application Aliases
alias android='/usr/local/bin/android-studio/bin/studio.sh'
alias arduino='/usr/local/bin/arduino-1.6.12/arduino'

# General Convenience
alias b='cd -'
alias la='ls -la'
alias l='ls -l'
alias mute='amixer set Master toggle'
alias x='chmod +x'
alias gdb='gdb -q'
alias valgrindf='valgrind --leak-check=full --show-leak-kinds=all'

alias bs='xbacklight -set'
alias bu='xbacklight -inc 5'
alias bd='xbacklight -dec 5'

# School
alias ews='ssh ashrafa2@linux.ews.illinois.edu'

# LC-3
alias lc3convert='/home/ashrafadj/.lc3/lc3convert'
alias lc3as='/home/ashrafadj/.lc3/lc3as'
alias lc3sim='/home/ashrafadj/.lc3/lc3sim'
alias lc3sim-tk='/home/ashrafadj/.lc3/lc3sim-tk'

# Hadoop
alias hadoop='/usr/bin/hadoop-2.8.1/bin/hadoop'
alias hdfs='/usr/bin/hadoop-2.8.1/bin/hdfs'