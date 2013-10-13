#!/bin/sh

cd $(dirname $0)
for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
        echo "ln -isF $PWD/$dotfile $HOME"
    fi
done