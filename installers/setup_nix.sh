#!/usr/bin/env bash
set -e

# install Nix
sh <(curl -L https://nixos.org/nix/install) --daemon
sudo sysytemctl enable --now nix-daemon

# add channels
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl
nix-channel --update

# install nixGL
nix-env -iA nixgl.auto.nixGLDefault
