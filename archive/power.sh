#!/usr/bin/env bash

set -euo pipefail

if [[ "${EUID}" -eq 0 ]]; then
    SUDO=()
else
    SUDO=(sudo)
    sudo -v
fi

for command in systemctl tlp powertop; do
    if ! command -v "${command}" >/dev/null 2>&1; then
        printf 'Error: required command not found: %s\n' "${command}" >&2
        exit 1
    fi
done

printf 'Stopping and disabling power-profiles-daemon...\n'
"${SUDO[@]}" systemctl stop power-profiles-daemon
"${SUDO[@]}" systemctl disable power-profiles-daemon

printf 'Starting TLP...\n'
"${SUDO[@]}" tlp start

printf 'Applying powertop tunings...\n'
"${SUDO[@]}" powertop --auto-tune

printf 'Power settings applied successfully.\n'

