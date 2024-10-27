while true; do
	xsetroot -name "$(date + "%F %R")"
	sleep 1m
done &
eval $(dbus-launch --sh-syntax)
export	DBUS_SESSION_BUS_ADRESS 
export	DBUS_SESSION_BUS_PID
export BROWSER=qutebrowser
pulseaudio --start &

exec dwm
