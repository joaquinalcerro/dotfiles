#! /bin/bash

sudo rsync -aAXv --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=".cache" --exclude="Downloads" --exclude="Dropbox" --exclude="Bootstrap" --exclude='VirtualBox VMs' / /run/media/jalcerro/LENOVO-BK/


sudo rsync -aAXv --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/home/jalcerro/.cache --exclude="Downloads" --exclude="Dropbox" --exclude="Bootstrap" --exclude='VirtualBox VMs' --exclude="KeenTheme" --exclude="MongoDB" --exclude="WebApps" --exclude="/home/jalcerro/.config/google-chrome" --exclude="/home/jalcerro/.config/chromium" --exclude="/home/jalcerro/.config/Code" --exclude="/home/jalcerro/.config/bstudio" --exclude="/home/jalcerro/.npm" --exclude="/home/jalcerro/.asdf" / /run/media/jalcerro/LENOVO-BK/
