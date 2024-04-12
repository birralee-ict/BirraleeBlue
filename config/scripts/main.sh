#!/usr/bin/env bash
set -euo pipefail

# Remove things we do not want on the image
rpm-ostree override remove \
    steam \
    lutris \
    goverlay \
    krfb \
    kdeconnectd
