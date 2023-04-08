### Set's ###
set fish_greeting
set PATH $PATH /home/ghost/Work/Code/Commands
set PATH $PATH /home/ghost/.local/bin
set PATH $PATH /var/lib/snapd/snap/bin
set PATH $PATH /home/ghost/./rvm/bin
set PATH $PATH /home/ghost/.local/share/gem/ruby/3.0.0/bin

### Aliases ###
alias ..="cd .."
alias bye="shutdown now"
alias la="ls -la"
alias nv="nvim"
alias pacman="sudo pacman"
alias update="sudo pacman -Syu"

alias google="/bin/google-chrome-stable"
alias msfc="/usr/bin/msfconsole"
alias work="cd /home/ghost/Work/"

#[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)"
set SSH_AUTH_SOCK /tmp/ssh-XXXXXXwB5I4J/agent.766


if status --is-interactive
	if test -z "$DISPLAY" -a "$XDG_VTNR" = 1                                        
			exec startx                                                                 
	end 

	# Set colors in tty 
	~/.config/fish/themes/nord.fish

end

### Needed for pyenv ###
#pyenv init - | source
#status --is-interactive; and source (pyenv virtualenv-init -|psub)
