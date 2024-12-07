#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

rpm-ostree install \
        bat \
        ripgrep \
        eza \
        stow \
        syncthing \
        vim \
        zsh \
        zsh-autosuggestions \
        zsh-syntax-highlighting \

sed -i 's|^SHELL=.*|SHELL=/usr/bin/zsh|' /etc/default/useradd

systemctl enable podman.socket
