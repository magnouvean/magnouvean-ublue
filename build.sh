#!/bin/bash

set -ouex pipefail

rpm-ostree install \
  bat \
  eza \
  gnome-console \
  jetbrains-mono-fonts-all \
  ripgrep \
  stow \
  syncthing \
  vim \
  zsh \
  zsh-autosuggestions \
  zsh-syntax-highlighting

rpm-ostree install \
  gnome-shell-extension-appindicator \
  gnome-shell-extension-caffeine \
  gnome-shell-extension-dash-to-dock

rpm-ostree install code

systemctl enable podman.socket

# Make zsh the default shell
sed -i 's|^SHELL=.*|SHELL=/bin/zsh|' /etc/default/useradd