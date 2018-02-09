#!/bin/bash

# getopts: http://rsalveti.wordpress.com/2007/04/03/bash-parsing-arguments-with-getopts/

type='lcpd' # lg, tv, lcpd
side='above' # above, below, left-of, right-of, mirror
off=
while getopts “t:s:o” OPTION
do
     case $OPTION in
         t)
             type=$OPTARG
             ;;
         s)
             side="--$OPTARG"
             if [ "$side" == '--mirror' ]; then
                 side='--output'
             fi
             ;;
         o)
             off=1
             ;;
     esac
done

if [ $off ]; then
  xrandr --output DP1 --off
  exit 0
fi


### Home LG monitor (FLATRON W2353V)
if [ $type == 'lg' ]; then
    echo "Turning $type monitor"
    xrandr --newmode "1920x1080_50.00"  141.50  1920 2032 2232 2544  1080 1083 1088 1114 -hsync +vsync
    xrandr --addmode DP1 1920x1080_50.00
    xrandr --output DP1 --mode 1920x1080_50.00 $side LVDS1
fi

# Home TV / Sala de reuniões bloco C
if [ $type == 'tv' ]; then
    echo "Turning $type monitor"
    xrandr --newmode "1920x1080R"  138.50  1920 1968 2000 2080  1080 1083 1088 1111 +hsync -vsync
    xrandr --addmode DP1 1920x1080R
    xrandr --output DP1 --mode 1920x1080R $side LVDS1
fi

# LCPD SyncMaster 2232bw plus
if [ $type == 'lcpd' ]; then
    echo "Turning $type monitor"
    xrandr --newmode "1680x1050" 146.25 1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
    xrandr --addmod DP1 1680x1050
    xrandr --output DP1 --mode 1680x1050 $side LVDS1
fi

