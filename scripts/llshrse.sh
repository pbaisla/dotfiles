#!/bin/bash
# Lock Logout Suspend Hibernate Restart Shutdown Exit

kill_lemonbar() {
  kill `pgrep -n lemonbar`
}

echo "%{c} \
  %{A:lock:}Lock%{A} \
  %{A:logout:}Logout%{A} \
  %{A:sleep:}Suspend%{A} \
  %{A:hiber:}Hibernate%{A} \
  %{A:reboot:}Restart%{A} \
  %{A:poweroff:}Shutdown%{A} \
  %{A:exit:}Exit%{A}  " | \
  lemonbar -g 420x50+500+350 -dp | \
  while :; do
    read line

    kill_lemonbar

    case $line in
      'lock')
        ~/.i3/locki3/locki3
        ;;
      'logout')
        i3-msg exit
        ;;
      'sleep')
        ~/.i3/locki3/locki3 && systemctl suspend
        ;;
      'hiber')
        ~/.i3/locki3/locki3 && systemctl hibernate
        ;;
      'reboot')
        systemctl reboot
        ;;
      'poweroff')
        systemctl poweroff -i
        ;;
      'exit')
        ;;
    esac

    exit

  done
