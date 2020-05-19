#!/bin/zsh

echo $1

mkdir -p roles/$1
cd roles/$1
mkdir defaults files handlers meta templates tasks vars
cd tasks
touch main.yml


