# changing terminal title with current working directory
	PROMPT_COMMAND='echo -ne "\033]0;$(pwd)\007"'

# PATH
	PATH=$PATH:~/.local/bin
	PATH=$PATH:/usr/games
	export PATH

# CLASSPATH
	CLASSPATH="/usr/local/lib/antlr-4.7.1-complete.jar"
	#CLASSPATH="$CLASSPATH:"
	export CLASSPATH

# aliases
	# of commands
		alias py=python3.5
		alias ase='apt-cache search'
		alias ash='apt-cache show'
		alias dw='~/jogos/Dwarf.Fortress/LinuxLNP-0.43.03-r04/startlnp&'
		alias ss='git status --short'
		alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
		alias grun='java org.antlr.v4.gui.TestRig'
		# default parameters
			alias ls='ls --color=auto'
	# go to
		alias gd='cd ~/documentos/'
		alias gD='cd ~/downloads/'
		#alias gp='cd ~/informatica/Python/'
		alias gp='cd ~/.pendrive'
		alias gP='cd ~/downloads/programas'
		alias gj='cd ~/informatica/Java/'
		alias gs='cd ~/informatica/Shell/'
		alias gi3='cd ~/.config/i3/; git diff --shortstat'
		alias g16='cd ~/informatica/Python/PyCharmProjects/POO/Dez-seis/; git diff --shortstat'
		alias ge='cd ~/informatica/Java/IdeaProjects/vocabularioSoftware/VE_JavaScript; git diff --shortstat'
		alias gn='cd ~/documentos/notas/'
		alias gi='cd ~/informatica/'
		alias gw='cd ~/informatica/web/'
	# configure config file
		alias gci3='cd ~/.config/i3/ && vim config'
		alias ci3='vim ~/.config/i3/config'
		alias cv='vim ~/.vim/vimrc'
		alias cb='vim ~/.bashrc'
	# mini scripts
		# tabulate comma separated values file
		alias csv='column -s, -t'
		# tabulate dash separated values file
		alias dsv='column -s/ -t'
		# create a temp dir with the user's name and go to it
		alias tmp="mkdir -p /tmp/$USER ; cd /tmp/$USER"

# changing prompt
	# functions
		function get_git_branch() {
			# branch parser obtido de http://ezprompt.net/
			branch_name=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
			if [ $branch_name ]
			then
				echo " [$branch_name]"
			else
				echo ""
			fi
		}
		# error! need to learn more bash
		function get_git_short_status() {
			if [ $(git status || echo 'Not a git repository') ]
			then
				echo "\nNot a git repository"
			else
				echo $(git status --short)
			fi
		}
	# custom prompts
		# prompts personalizados via kirsle.net/wizards/ps1.html
		normalPS1="\[$(tput setaf 4)\]\u@\h\[$(tput setaf 6)\] \w\[$(tput setaf 5)\]\`get_git_branch\`\[$(tput setaf 2)\]\n\\$ \[$(tput sgr0)\]"
		compactaPS1="\[$(tput setaf 6)\]\w\[$(tput setaf 5)\]\`get_git_branch\`\[$(tput setaf 2)\]\n\\$ \[$(tput sgr0)\]"
		gitPS1="\[$(tput setaf 6)\]\w\[$(tput setaf 5)\]\`get_git_branch\`\[$(tput sgr0)\]\`get_git_short_status\`\[$(tput setaf 2)\]\n\\$ \[$(tput sgr0)\]"
		supercompactaPS1="\[$(tput setaf 2)\]\\$ \[$(tput sgr0)\]"
	# commands
		alias nps='PS1=$normalPS1'
		alias cps='PS1=$compactaPS1'
		alias gps='PS1=$gitPS1'
		alias scps='PS1="$ "'
	# standard prompt
		PS1=$normalPS1

# vim mode
set -o vi

