PATH=$PATH:$HOME/.local/bin
PATH=$PATH:/usr/local/go/bin

export GOPATH=$HOME/go
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$GOROOT/bin

export PATH

export EDITOR=vim

transfer() {
    # write to output to tmpfile because of progress bar
    tmpfile=$( mktemp -t transferXXX )
    curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile;
    cat $tmpfile;
    rm -f $tmpfile;
}

alias transfer=transfer

PS1="\e[30;1m\w\e[0m\n\$ "
