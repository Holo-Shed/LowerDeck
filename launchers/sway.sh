#!/usr/bin/env bash
unset LD_PRELOAD
xhost +si:localuser:$USER
exec nixGL sway
