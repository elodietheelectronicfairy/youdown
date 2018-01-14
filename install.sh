#!/bin/bash
whoami=($user)
echo -e "Are you sure you want to install YouDown? (type either y {for yes} or any other key {for no} and press [enter])"
read you
if [[ "$you" == "y" ]];
then
  echo -e "[*]Installing Dependancies[*]"
  if [[ "$user" == "root" ]];
  then
    apt-get update
    apt-get install -y wget ffmpeg head
    echo -e "[*]Installing to filesystem[*]"
    mkdir ~/youdown
    chmod +x youdown
    mv youdown /usr/bin
    clear
    echo -e "[*]Finished installation[*]"
    exit
  else
    sudo apt-get update
    sudo apt-get install -y wget ffmpeg head
    echo -e "[*]Installing to filesystem[*]"
    mkdir ~/youdown
    chmod +x youdown
    sudo mv youdown /usr/bin
    clear
    echo -e "[*]Finished installation[*]"
    exit
  fi
else
  clear
  echo -e "[*]Quitting[*]"
  exit
fi
