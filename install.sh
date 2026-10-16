#!/bin/sh
# Install (or with --uninstall, remove) kdeconnect-phone-mouse for the current user.
set -eu
cd "$(dirname "$0")"

BIN="$HOME/.local/bin/kdeconnect-phone-mouse"
UNIT="$HOME/.config/systemd/user/kdeconnect-phone-mouse.service"
CONF="$HOME/.config/kdeconnect-phone-mouse.conf"

if [ "${1:-}" = "--uninstall" ]; then
    systemctl --user disable --now kdeconnect-phone-mouse.service 2>/dev/null || true
    rm -f "$BIN" "$UNIT"
    systemctl --user daemon-reload
    echo "Removed. Your config ($CONF) was kept."
    exit 0
fi

install -Dm755 kdeconnect-phone-mouse "$BIN"
install -Dm644 systemd/kdeconnect-phone-mouse.service "$UNIT"
if [ ! -e "$CONF" ]; then
    install -Dm644 kdeconnect-phone-mouse.conf.example "$CONF"
    echo "Wrote $CONF - edit it to match where your phone sits."
fi
systemctl --user daemon-reload
systemctl --user enable --now kdeconnect-phone-mouse.service
echo "Running. Logs: journalctl --user -u kdeconnect-phone-mouse -f"
