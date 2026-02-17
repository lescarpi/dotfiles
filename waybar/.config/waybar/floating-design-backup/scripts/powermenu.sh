#!/bin/bash

options="Shutdown\nReboot\nLogout\nSuspend"

choice=$(echo -e "$options" | fuzzel --dmenu)

case "$choice" in
        Shutdown) systemctl poweroff ;;
        Reboot) systemctl reboot ;;
        Logout) niri-logout ;;
        Suspend) systemctl suspend ;;
esac
