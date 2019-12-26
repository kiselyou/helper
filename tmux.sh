#!/usr/bin/env bash

sudo apt install tmux
echo " - Run command line: 'cd ~ ; gedit .bashrc'"
echo " - Please paste following setting to the end: '[ -z \$TMUX  ] && { tmux attach || exec tmux new-session && exit;}'"
echo "save changes and restart console"