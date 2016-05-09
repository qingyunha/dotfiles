# .bash_profile

# Get the aliases and funcitons
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/usr/local/go/bin

export GOPATH=$HOME/go
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$GOROOT/bin

export PATH


export EDITOR=vim
