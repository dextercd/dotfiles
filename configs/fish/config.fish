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

alias wluajit="/home/dexter/Downloads/LuaJIT-2.0.5/src/luajit.exe"

set -x PATH /home/dexter/perl5/bin $PATH 2>/dev/null;
set -q PERL5LIB; and set -x PERL5LIB /home/dexter/perl5/lib/perl5:$PERL5LIB;
set -q PERL5LIB; or set -x PERL5LIB /home/dexter/perl5/lib/perl5;
set -q PERL_LOCAL_LIB_ROOT; and set -x PERL_LOCAL_LIB_ROOT /home/dexter/perl5:$PERL_LOCAL_LIB_ROOT;
set -q PERL_LOCAL_LIB_ROOT; or set -x PERL_LOCAL_LIB_ROOT /home/dexter/perl5;
set -x PERL_MB_OPT --install_base\ \"/home/dexter/perl5\";
set -x PERL_MM_OPT INSTALL_BASE=/home/dexter/perl5;
