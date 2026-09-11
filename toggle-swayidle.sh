#!/bin/sh

if pgrep -x swayidle >/dev/null; then
    # Check whether swayidle is currently stopped
    state=$(ps -o state= -C swayidle | tr -d ' ')

    case "$state" in
        T*)
            pkill -CONT -x swayidle
            echo "swayidle" "Enabled"
            ;;
        *)
            pkill -STOP -x swayidle
            echo "swayidle" "Disabled"
            ;;
    esac
else
    echo "swayidle" "Not running"
    exit 1
fi
