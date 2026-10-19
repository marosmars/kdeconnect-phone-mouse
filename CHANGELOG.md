# Changelog

## 0.2.0 — 2026-10-19

- `--require-charging`: arm the edge only while the phone is charging,
  e.g. on its charging stand. Uses the KDE Connect battery plugin.

## 0.1.0 — 2026-10-16

First release.

- Edge crossing from any screen edge, or part of one, onto an Android phone
  through KDE Connect's Mouse receiver.
- Uses KWin's input capture D-Bus API directly: no permission dialog, no
  per-crossing notification, partial-edge barriers.
- Position mapping in both directions; return by pushing back out of the
  phone, or Meta+Shift+Esc.
- Click = tap, drag = touch drag, wheel = swipe under the pointer,
  right = Back, middle = Home.
- Edge line indicator (gtk-layer-shell), blue idle / orange active.
- Armed only while the phone is reachable; restarts on screen layout changes.
- systemd user service, installer, config file.
