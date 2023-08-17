#!/bin/bash


echo -e "\e[34m
╔╦╗╔╦╗╦ ╦═╗ ╦
 ║ ║║║║ ║╔╩╦╝
 ╩ ╩ ╩╚═╝╩ ╚
 "

echo -e "\e[31m "



apt install tmux -y

 cd
 git clone https://github.com/gpakosz/.tmux.git
 ln -s -f .tmux/.tmux.conf
 cp .tmux/.tmux.conf.local


