#!/usr/bin/env bash
unset LD_PRELOAD
source /etc/profile.d/nix.sh
exec nixGL kitty --start-as=fullscreen
