#!/bin/bash
clear

if [ "$(uname)" == "Darwin" ]; then
    echo "Using Mac dotfiles"
    DOTFILES=$HOME/.dotfiles/mac/
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "Using Linux dotfiles"
    DOTFILES=$HOME/.dotfiles/linux/
  else
    echo "Error detecting OS, Using Linux dotfiles"
    DOTFILES=$HOME/.dotfiles/linux/
fi


echo -e "\ncreating symlinks\n"
orig=".orig"
for file in $(find $DOTFILES -type f) ; do
    target="$HOME/$( basename $file )"
        if [ -f $target ]; then
	    mv $target $target$orig
            echo "Backed up $target to $target$orig"
	fi
    echo "creating symlink for $file"
    ln -s $file $target
done

