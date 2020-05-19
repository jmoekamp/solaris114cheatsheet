#!/bin/zsh

vagrant package --base "Solaris 11 master" --output solaris114.box
vagrant box add solaris114 solaris114.box 

