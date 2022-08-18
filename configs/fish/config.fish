# disable greeting
set fish_greeting

# variables
set -x EDITOR nvim
set -x TERMINAL kitty
set -x PATH $PATH ~/bin
set -x PATH $PATH ~/.dotnet/tools
set -x npm_config_prefix "$HOME/.node_modules"
set -x PATH "$npm_config_prefix/bin:$PATH"

# prompt
function fish_prompt
	echo -n '$ '
end

# aliases
alias e="$EDITOR"
alias vknv='env VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json'
alias l='ls -l'
alias guile='guile --no-auto-compile'

function s
	echo $status
end

function journal
	nvim -c 'set spelllang=nl' -c 'set spell' -c 'norm G' ~/journals/(date -I)
end
