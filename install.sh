#!/bin/sh

ask()
{
	echo -n "$1 (Y/N) "
	read input

	case $input in
		[yY]) return 0;;
		[nN]) return 1;;

		*)
			echo "Unexpected response."
			ask "$1"
			return
	esac
}

assert_file_exists()
{
	if test ! -f "$1"
	then
		echo "File $1 doesn't exist!"
		exit 1
	fi
}

specific_config()
{
	assert_file_exists "$1"

	if ask "Install config $1 to $2?"
	then
		ln -sfr "$1" "$2"
	fi
}

config_install_location="$HOME/.config"

echo "# Install packages"
if ask "Install packages"
then
	grep '.' packages.list | xargs sudo pacman -Syu --needed
fi

echo "# General configs"
for file in configs/*
do
	if ask "install config $file?"
	then
		ln -sfr "$file" "$config_install_location"
	fi
done

echo "# Location specific configs"

specific_config "irregular/.tmux.conf" "$HOME/.tmux.conf"
