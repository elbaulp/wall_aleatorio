#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export DISPLAY=:0.0

picsfolder="/home/hkr/Pictures/HD/"
cd $picsfolder

files=(*.{jpg,png})
#echo $files
N=${#files[@]}

((N=RANDOM%N))
randomfile1=${files[$N]}

logger "$0 - Setting $picsfolder$randomfile1 as wallpaper"

feh --bg-fill "$picsfolder$randomfile1"
