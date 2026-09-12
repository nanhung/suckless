#!/bin/sh
# Report the active fcitx5 input method for the i3status-rust "custom" block.
# Prints the JSON object that block expects when json = true.

if ! fcitx5-remote --check >/dev/null 2>&1; then
	printf '{"icon":"keyboard","state":"Warning","text":"off"}\n'
	exit 0
fi

name=$(fcitx5-remote -n 2>/dev/null)
active=$(fcitx5-remote 2>/dev/null) # 1 = inactive, 2 = active

case "$name" in
pinyin) label="拼" ;;
keyboard-us) label="EN" ;;
keyboard-*) label=$(printf '%s' "${name#keyboard-}" | tr 'a-z' 'A-Z') ;;
"") label="?" ;;
*) label="$name" ;;
esac

if [ "$active" = 2 ]; then
	state="Good"
else
	state="Idle"
fi

printf '{"icon":"keyboard","state":"%s","text":"%s"}\n' "$state" "$label"
