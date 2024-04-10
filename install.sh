#!/bin/bash

ls /usr/bin/gnome-calculator
if [[ $1 -eq 0 ]]; then
    read -p "The gnome-terminal apper to be installed, Would you like to over write? [y/N]" answer
        case $answer in
        [Yy]* ) 
            sudo cp ./gnome-terminal /usr/bin/
            sudo chown root:root /usr/bin/gnome-terminal
            sudo chmod 755 /usr/bin/gnome-terminal
            exit;;
        * ) 
            echo "Exiting.";;
        esac
    exit
fi
