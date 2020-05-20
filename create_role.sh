#!/bin/zsh

sectionname="$1" 
functionname="$2" 
commandstring="$3"
rolename=$sectionname\_$functionname
tasksmainymlpath=/Users/joergmoellenkamp/solaris114cheatsheet/roles/$rolename/tasks/main.yml

mkdir -p roles/$rolename
cd roles/$rolename
mkdir defaults files handlers meta templates tasks vars
cd tasks
pwd
cp /Users/joergmoellenkamp/solaris114cheatsheet/roletemplate/main.yml $tasksmainymlpath

perl -i -pe s/%%Command%%/$commandstring/g $tasksmainymlpath
perl -i -pe s/%%Sectionname%%/$sectionname/g $tasksmainymlpath
perl -i -pe s/%%Functionname%%/$functionname/g $tasksmainymlpath

echo "    - role: $rolename " >> /Users/joergmoellenkamp/solaris114cheatsheet/test.yml

code /Users/joergmoellenkamp/solaris114cheatsheet/test.yml &
code $tasksmainymlpath &

