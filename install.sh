#!/bin/bash

FLAG=$1
FISH="$HOME/.config/fish"
NVIM="$HOME/.config/nvim"

function help {
	echo "Usage: install.sh [option]"
	echo "-h | --help: Prints help message"
	echo "-l | --link: Links the files to .config"
	echo "-m | --move: Moves the files to .config"
}

function link {
	echo "[*] Linking files to .config.."
	if [ -z "$(ls -A $NVIM)" && -z "$(ls -a $FISH)" ]; then
		echo "[!] Files already exist! Remove files?[y/N] "
		read -r REMOVE
		if [ $REMOVE == 'y' || $REMOVE == 'Y']; then
			rm $NVIM/* && rm $FISH/config.fish
			ln -s $PWD/nvim $HOME/.config/nvim
			ln -s $PWD/fish/config.fish $HOME/.config/fish/config.fish
			echo "[*] Linking complete! Enjoy your setup"
		else
			echo"[!] Abort file link!"
		fi
	fi
}

function move {
	echo "[*] Moving files to .config..."
	if [ -z "$(ls -A $NVIM)" && -z "$(ls -A $FISH)" ]; then
		echo "[!] $HOME/.config/ dirs are not empty! Replace files?[y/N] "
		read -r REPLACE
		if [ $REPLACE == 'y' || $REPLACE == 'Y' ]; then
			mv fish $HOME/.config/fish
			mv nvim $HOME/.config/nvim
			echo "[*] Moving complete! Enjoy your setup"
		else
			echo "[!] Aborting file move!"
		fi
	fi
}


function main {

	case $FLAG in
		-h|--help)
			help
			;;
		-l|--link)
			link
			;;
		-m|--move)
			move
			;;
		*)
			echo "Use: 'install.sh --help' to view usage"
			;;
	esac
}

main
