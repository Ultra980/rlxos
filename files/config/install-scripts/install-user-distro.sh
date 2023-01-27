#!/bin/bash
(
   echo "# installing ubuntu container"
   distrobox create --yes -i docker.io/library/ubuntu:22.04 --name ubuntu
) | zenity --progress --pulsate \
           --auto-close --no-cancel --width=300
if [[ "$?" != "0" ]] ; then
    zenity --error \
           --text="FAILED to install container"
fi