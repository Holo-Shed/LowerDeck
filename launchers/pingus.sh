#!/usr/bin/env bash
unset LD_PRELOAD
source /etc/profile.d/nix.sh
exec nixGL pingus -f -R 1280x800
