
	PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]' # set window title
	PS1="$PS1"'\n'                 # new line
	#PS1="$PS1"'\[\033[32m\]'       # change to green
    PS1="$PS1"'\[\e[0;38;5;154m\]' # change to green
	PS1="$PS1"'\u\[\e[0m\]@\[\e[0;38;5;154m\]\h\[\e[0m\]:\[\e[0;38;5;123m\]$PWD\[\e[0;38;5;221m\]$(__git_ps1 " (%s)")\[\e[0m\]$ '             # user@host<space>
	#PS1="$PS1"'\[\033[35m\]'       # change to purple
	#PS1="$PS1"'$MSYSTEM '          # show MSYSTEM
	#PS1="$PS1"'\[\033[33m\]'       # change to brownish yellow
	#PS1="$PS1"'\w'                 # current working directory
	if test -z "$WINELOADERNOEXEC"
	then
		GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
		COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
		COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
		COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
		if test -f "$COMPLETION_PATH/git-prompt.sh"
		then
			. "$COMPLETION_PATH/git-completion.bash"
			. "$COMPLETION_PATH/git-prompt.sh"
			#PS1="$PS1"'\[\033[36m\]'  # change color to cyan
			#PS1="$PS1"'`__git_ps1`'   # bash function
		fi
	fi
	#PS1="$PS1"'\[\033[0m\]'        # change color
	#PS1="$PS1"'\n'                 # new line
	#PS1="$PS1"'$ '                 # prompt: always $

#   \[\]\[\e[0;38;5;154m\]\u\[\e[0m\]@\[\e[0;38;5;154m\]\h\[\e[0m\]:\[\e[0;38;5;123m\]$PWD\[\e[0;38;5;221m\]$(__git_ps1 " (%s)")\[\e[0m\]$ \[\]