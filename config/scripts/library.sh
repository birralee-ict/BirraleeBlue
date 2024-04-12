#!/usr/bin/env bash
set -euo pipefail

systemctl enable sshd.service

# Remove things we do not want on the image
rpm-ostree override remove \
    kde-connect \
    kde-connect-libs \
    kdeconnectd
