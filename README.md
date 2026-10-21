# Wayfire Desktop

My Wayfire desktop configuration for Arch Linux. It includes Wayfire profiles, Waybar, Rofi, terminal and GTK settings, and helper scripts.

## Included

- Wayfire configuration with LIGHT, NORMAL, and FULL plugin profiles
- Waybar configuration and reload script
- Rofi launchers, themes, and profile selector
- GTK 3 and GTK 4 settings
- Kitty and Alacritty configurations
- Fish shell and Fastfetch configuration
- Wlogout layout and styling
- Scripts for changing wallpapers, selecting displays, and switching Wayfire profiles

## Dependencies

Install the applications you want to use from this configuration. Some are launched directly by the Wayfire config; others are only needed for the corresponding menu, script, or feature.

### Optional

- [`fetch`](https://github.com/areofyl/fetch) — animated terminal system-info display. Not required for the desktop configuration.

### Desktop and session

- Wayfire, with the plugins enabled in `config/wayfire/wayfire.ini`
- Xwayland
- Waybar
- Rofi with Wayland support
- Wlogout
- GTK 3 and GTK 4
- `xdg-desktop-portal` and a suitable portal backend
- A Polkit authentication agent

### Fonts and appearance

- **Adwaita Sans** — GTK and Rofi font
- **JetBrainsMono Nerd Font** — Wayfire decoration font and a Waybar fallback
- **Adwaita** — GTK theme and cursor theme
- **Papirus-Dark** — GTK icon theme
- `freedesktop` sound theme

The configs also reference `JetBrainsMono Nerd Font` in Wayfire and Waybar, so install a Nerd Font version of JetBrains Mono. Font family names can vary slightly by distribution and font package.

### Applications and utilities referenced by the configuration

- Kitty and Alacritty — terminal emulators
- Firefox — browser
- Nautilus — file manager
- `rofi` — launcher and profile menu
- `rofimoji` — emoji picker
- `wl-clipboard` (`wl-copy`, `wl-paste`) and `cliphist` — clipboard features
- `grim` and `slurp` — screenshots
- `wdisplays` and `kanshi` — display configuration
- `swaync` — notification center and quick settings
- `swayidle` and `swaylock` — idle handling and screen lock
- `wlsunset` — color temperature
- `paplay` — login sound
- `amixer` (`alsa-utils`) — audio keybindings and quick settings
- `nm-connection-editor` — network settings launcher
- `blueman` — Bluetooth manager, if Bluetooth controls are used
- `nwg-look` — GTK theme configuration
- `ddcutil` — external monitor brightness control
- `ydotool` — keyboard input simulation for the show-apps shortcut
- `python-wayfire` — Python bindings for Wayfire IPC, used by the workspace script
- `polkit-gnome` — authentication agent, if using the configured path
- `awww` — wallpaper daemon
- `notify-send` — profile-change notifications

The configuration also calls `wayfire-toggle-perf`, `wayfire-change-screen`, and `change-background`. Install or configure any dependencies those scripts require.

## Install

Back up any existing configuration before copying files. From the repository
root, copy only the directories you want:

```sh
cp -a config/. ~/.config/
```

Review machine-specific settings before starting Wayfire, especially display
names, wallpaper locations, and command paths. The scripts may need to be
installed in `~/.local/bin` and made executable:

```sh
mkdir -p ~/.local/bin
cp -a scripts/. ~/.local/bin/
chmod +x ~/.local/bin/*
```

Make sure `~/.local/bin` is in your `PATH`, and install the commands used by
the scripts.

## Machine-specific settings

- The wallpaper script uses `~/Wallpapers` by default. Set
  `WAYFIRE_WALLPAPER_DIR` to use another directory.
- The display selector may need adjustment for systems whose internal display
  connector is not detected automatically.
- Review the keyboard layout and bindings in `config/wayfire/wayfire.ini`
  before using them.

## Notes

This is a personal configuration, not a universal installer. Package names
and availability vary between distributions; the list above names the
commands and applications referenced by the configs. Check each script and
