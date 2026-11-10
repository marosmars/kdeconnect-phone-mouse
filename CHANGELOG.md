# Changelog

## 0.3.1 — 2026-11-10

- The phone's Alt+Tab window now leaves the task bar and Alt+Tab while the
  phone is away (or not charging, with `--require-charging`), and comes back
  when it is ready.

## 0.3.0 — 2026-11-10

- Keyboard: while the phone has the mouse, typing goes to the focused text
  field on the phone (US layout; Enter, Backspace, Delete, arrows, Home/End,
  Tab, Esc, Ctrl+A/C/V/X). Needs the phone's **Remote keyboard** plugin.
  `--no-keyboard` keeps the keyboard on the PC.
- Alt+Tab: a minimized window named after the phone sits in Alt+Tab and the
  task bar. Picking it sends the mouse and keyboard to the phone; Alt+Tab
  on the phone returns to the PC. `--no-alt-tab` turns it off.

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
