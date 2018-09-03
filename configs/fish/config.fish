# disable greeting
set fish_greeting

# variables
set -U EDITOR nvim

# prompt
function fish_prompt
	echo -n '$ '
end

# pacman functions
alias update="sudo pacman -Syu"
alias e="$EDITOR"
function has_installed
	pacman $argv -Q >/dev/null 2>/dev/null
end

function s
	echo $status
end
