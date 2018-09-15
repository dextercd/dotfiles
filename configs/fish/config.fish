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
alias update="sudo pacman -Syu"
alias e="$EDITOR"
alias l="ls -l"

function has_installed
	pacman $argv -Q >/dev/null 2>/dev/null
end

function s
	echo $status
end
