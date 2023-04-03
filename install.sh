#!/bin/bash

FLAG=$1

function help {
	echo "Usage: install.sh [option]"
	echo "-h | --help: Prints help message"
	echo "-l | --link: Links the files to .config"
	echo "-m | --move: Moves the files to .config"
}

function link {
	echo "[*] Linking files to .config.."
	if [[ -d $HOME/.config  ]]; then
		ln -s $PWD/nvim $HOME/.config/nvim
		ln -s $PWD/fish $HOME/.config/fish
		echo "[*] Linking done!"
	else
		echo "[!] .config does not exist! Creating.. "
		mkdir $HOME/.config
		ln -s $PWD/nvim $HOME/.config/nvim
		ln -s $PWd/fish $HOME/.config/fish
		echo "[*] Linking done!"
	fi
}

function move {
	echo "[*] Moving files to .config..."
	if [[ -d $HOME/.config  ]]; then
		mv nvim $HOME/.config/
		mv fish $HOME/.config/
		echo "[*] Moving done!"
	else
		mkdir $HOME/.config
		mv nvim $HOME/.config/
		mv fish $HOME/.config/
		echo "[*] Moving done!"
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
