# disable greeting
set fish_greeting

# variables
set -x EDITOR nvim
set -x TERMINAL kitty

# prompt
function fish_prompt
	echo -n '$ '
end

# aliases
alias e="$EDITOR"
alias l="ls -l"

function s
	echo $status
end
