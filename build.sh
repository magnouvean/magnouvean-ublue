#!/bin/bash

set -ouex pipefail

rpm-ostree install \
  bat \
  eza \
  ripgrep \
  stow \
  syncthing \
  vim \
  zsh \
  zsh-autosuggestions \
  zsh-syntax-highlighting \

systemctl enable podman.socket

# Make zsh the default shell
sed -i 's|^SHELL=.*|SHELL=/bin/zsh|' /etc/default/useradd