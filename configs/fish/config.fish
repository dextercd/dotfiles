# disable greeting
set fish_greeting

# variables
set -x EDITOR nvim
set -x TERMINAL kitty
set -x PATH ~/bin $PATH

# prompt
function fish_prompt
	echo -n '$ '
end

# aliases
alias e="$EDITOR"
alias vknv="env VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json"
alias l="ls -l"

function s
	echo $status
end
