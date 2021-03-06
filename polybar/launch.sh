#! /bin/sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar main 2>&1 | tee -a /tmp/polybar-main-$m.log & disown
done
