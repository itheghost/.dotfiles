### Set's ###
set fish_greeting
set PATH $PATH /home/ghost/Coms
set PATH $PATH /home/ghost/.rvm/bin
set PATH $PATH /home/ghost/.local/bin
set PATH $PATH /home/ghost/.pyenv/bin
set PATH $PATH /var/lib/snapd/snap/bin

### Aliases ###
alias ..="cd .."
alias bye="shutdown now"
alias la="ls -la"
alias nv="nvim"
alias pacman="sudo pacman"
alias ping="ping -c 5"
alias ports="nmap localhost"
alias speed="speedtest"
alias update="sudo pacman -Syu"

alias google="/bin/google-chrome-stable"
alias msfc="/usr/bin/msfconsole"
alias work="cd /home/ghost/Work/"


if status --is-interactive
	if test -z "$DISPLAY" -a "$XDG_VTNR" = 1                                        
			exec startx                                                                 
	end 
end

### Needed for pyenv ###
pyenv init - | source
status --is-interactive; and source (pyenv virtualenv-init -|psub)
