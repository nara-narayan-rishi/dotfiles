#!/bin/bash
clear

if [ $(uname -s) == "Linux" ]
then
    echo "Using Linux dot files"
    DOTFILES=$HOME/.dotfiles/linux/
else
    echo "Using Mac dot files"
    DOTFILES=$HOME/.dotfiles/mac/
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

