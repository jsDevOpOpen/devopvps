# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
#HISTCONTROL=ignoreboth
#HISTCONTROL=erasedups
#ignoreboth A shorthand combination that enables both ignorespace and ignoredups simultaneously.
HISTCONTROL=ignoreboth:erasedups
export HISTCONTROL

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
##alias hfix='history -n && history | sort -k2 -k1nr | uniq -f1 | sort -n | cut -c8- > ~/.tmp$$ && history -c && history -r ~/.tmp$$ && history -w && rm ~/.tmp$$'
#export HISTIGNORE="!(+(*\ *))"
#export HISTIGNORE="exit:[ \t]*" #HISTIGNORE overrides and builds upon HISTCONTROL
##PROMPT_COMMAND="hfix; $PROMPT_COMMAND"
unset PROMPT_COMMAND
HISTSIZE=9000
HISTFILESIZE=9000
