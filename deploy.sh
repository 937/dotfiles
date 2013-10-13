#!/bin/sh

cd $(dirname $0)
for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ] && [ $dotfile != '.gitmodules' ]
    then
        CMD="ln -isF $PWD/$dotfile $HOME"
        echo $CMD
        $CMD
    fi
done
