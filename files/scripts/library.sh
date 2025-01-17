#!/usr/bin/env bash
set -euo pipefail

systemctl enable sshd.service

# Remove things we do not want on the image
rpm-ostree override remove \
    kde-connect \
    kde-connect-libs \
    kdeconnectd

# Enable librarian user generation
systemctl enable librarian-user.service

# Disable ublue-update and instead enable topgrade directly
systemctl disable ublue-update.timer
systemctl enable birralee-update.timer
