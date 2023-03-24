#!/bin/bash

##  ===========================================================================
##
##  Functions
##
##  ===========================================================================

#   extract: Extract most know archives with one command.
#   ----------------------------------------------------
    extract () {  # TODO add check for each app
        if [ -f $1 ]; then
            case $1 in
                *.tar.bz2)	tar xjf $1	    ;;
		        *.tar.gz)	tar xzf $1	    ;;
		        *.bz2)		bunzip2 $1	    ;;
		        *.rar)		unrar e $1	    ;;
		        *.gz)		gunzip $1	    ;;
		        *.tar)		tar xf $1	    ;;
		        *.tbz2)		tar xjf $1	    ;;
		        *.tgz)		tar xzf	$1	    ;;
		        *.zip)		unzip $1	    ;;
		        *.Z)		uncompress $1	;;
		        *.7z)		7z x $1		    ;;
		        *) echo "'$1' cannot be extracted via extract()" ;;
	        esac
        else
	        echo "'$1' is not a valid file"
        fi
    }

#   mcd: Makes new Dir and jumps indide.
#   ----------------------------------------------------
    mcd () {
        mkdir -pv "$1" &&
        cd "$1"
    }

