# Set's ###
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

	#if [ "$TERM" = "linux" ]; then
		#printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
		#printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
		#printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
		#printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
		#printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
		#printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
		#printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
		#printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
		#printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
		#printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
		#printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
		#printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
		#printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
		#printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
		#printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
		#printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
		#printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
		#printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
		#clear
	#end
end

### Needed for pyenv ###
#pyenv init - | source
#status --is-interactive; and source (pyenv virtualenv-init -|psub)
