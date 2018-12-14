# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias rm=trash
alias rl='ls ~/.trash/'
alias httpserver='python -m SimpleHTTPServer'
alias ur=clear_trash
alias port='netstat -anp | grep'

trash()
{
    dist_path=$HOME"/.trash/"${!#}
    if [ -e $dist_path ]; then
        current_time=`date +%Y%m%d%H%M%S`
        new_dist_path=$HOME"/.trash/"$current_time"_"${!#}
        mv $@ $new_dist_path
    else
        mv $@ $HOME"/.trash/"
    fi
}

clear_trash()
{
    \rm -rf ~/.trash/*
}


# User specific aliases and functions
