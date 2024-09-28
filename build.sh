#!/bin/bash

set -ouex pipefail

rpm-ostree install \
  bat \
  code \
  eza \
  gnome-shell-extension-appindicator \
  gnome-shell-extension-caffeine \
  gnome-shell-extension-dash-to-dock \
  ripgrep \
  stow \
  syncthing \
  vim \
  zsh \
  zsh-autosuggestions \
  zsh-syntax-highlighting \
  "https://github.com/displaylink-rpm/displaylink-rpm/releases/download/v6.0.0-1/fedora-40-displaylink-1.14.6-1.github_evdi.x86_64.rpm"

systemctl enable podman.socket

# Make zsh the default shell
sed -i 's|^SHELL=.*|SHELL=/bin/zsh|' /etc/default/useradd