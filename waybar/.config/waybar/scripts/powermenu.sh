#!/bin/bash

options="Shutdown\nReboot\nLogout\nSuspend"

choice=$(echo -e "$options" | fuzzel --dmenu)

case "$choice" in
        Shutdown) sudo poweroff ;;
        Reboot) sudo reboot ;;
        Logout) niri-logout ;;
        Suspend) suspend ;;
esac
