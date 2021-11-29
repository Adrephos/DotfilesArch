#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}
run "dex $HOME/.config/autostart/arcolinux-welcome-app.desktop"
# run "xrandr --output eDP1 --scale 0.8x0.8 --primary --mode 1920x1080 --pos 1536x0 --output HDMI1 --scale 1.2x1.2 --mode 1280x1024 --pos 0x0~"
run "xrandr --output eDP1 --primary --mode 1920x1080 --pos 1792x0 --output HDMI1 --scale 1.4x1.4 --mode 1280x1024 --pos 0x0~"
#run "xrandr --output eDP1 --primary --mode 1920x1080 --pos 2685x0 --output HDMI1 --scale 1.4x1.4 --mode 1920x1080 --pos 0x0~"
#run "xrandr --output eDP1 --primary --mode 1920x1080 --pos 1920x0 --output HDMI1 --scale 1.5x1.5 --mode 1280x1024 --pos 0x0~"
#run "xrandr --output eDP1 --primary --mode 1920x1080 --pos 1280x0"
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run xrandr --output eDP-1 --primary --mode 1368x768 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
#run xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#run xrandr --output DVI-I-0 --right-of HDMI-0 --auto
#run xrandr --output DVI-1 --right-of DVI-0 --auto
#run xrandr --output DVI-D-1 --right-of DVI-I-1 --auto
#run xrandr --output HDMI2 --right-of HDMI1 --auto
#autorandr horizontal

run "nm-applet"
#run "pamac-tray"
run "flameshot"
run "xfce4-power-manager"
#run "blueberry-tray"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom -b  --config ~/.config/arco-dwm/picom.conf &
run "numlockx on"
run "volumeicon"
run "ibus-daemon -drxR"
#run "dwmblocks"
run slstatus &
sxhkd -c ~/.config/arco-dwm/sxhkd/sxhkdrc &
#run "nitrogen --restore"
#run "conky -c $HOME/.config/arco-dwm/system-overview"
#you can set wallpapers in themes as well
#run "~/Repositories/paperview/./paperview diamond/ 5 1792 0 1920 1080 diamond/ 5 0 0 1280 1024"
sleep 5;feh --bg-fill --randomize ~/Pictures/Wallpaper/* &

#run applications from startup

#run "insync start"
#run "spotify"
#run "ckb-next -b"
run "discord"
run "wmname compiz"
#run "telegram-desktop"
