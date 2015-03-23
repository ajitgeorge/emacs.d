#!/bin/bash

here=$(ruby -e 'puts File.absolute_path(".")') # hack around OS X not having have realpath

if [[ -e ~/.emacs.d ]] ; then
    if [[ $(readlink ~/.emacs.d) == "$here" ]] ; then
        echo $here already installed
        exit 0
    else
        echo ~/.emacs.d exists but does not point to $here.  Aborting.
        exit 1
    fi
fi

set -x
ln -s $here ~/.emacs.d
