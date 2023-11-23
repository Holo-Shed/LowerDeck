#!/usr/bin/env bash
# h/t https://guacamolie.nl/en/blog/sway-on-the-steam-deck/
# Template script for launching Nix
# software in Gaming Mode.
# Replace "$@" with the desired executable
# or just set the Steam command to: /path/to/.nix_template.sh MyNixApp

unset LD_PRELOAD
source /etc/profile.d/nix.sh
exec nixGL "$@"
