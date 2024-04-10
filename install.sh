#!/bin/bash

doStuff() {
    sudo cp ./gnome-terminal /usr/bin/
    sudo chown root:root /usr/bin/gnome-terminal
    sudo chmod 755 /usr/bin/gnome-terminal
}

ls /usr/bin/gnome-terminal
if [[ $? -eq 0 ]]; then
    read -p "The gnome-terminal apper to be installed, Would you like to over write? [y/N]" answer
        case $answer in
        [Yy]* )
            doStuff
            exit;;
        * )
            echo "Exiting.";;
        esac
    exit
fi

doStuff
