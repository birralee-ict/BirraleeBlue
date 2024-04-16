#!/usr/bin/env bash
set -euo pipefail

# Remove things we do not want on the image
rpm-ostree override remove \
    podman \
    distrobox \
    toolbox && \
rpm-ostree override remove \
    krfb \
    krfb-libs \
    kde-connect \
    kde-connect-libs \
    kdeconnectd && \
rpm-ostree override remove \
    power-profiles-daemon \
    || true && \
rpm-ostree override remove \
    tlp \
    tlp-rdw \
    || true && \
rpm-ostree install \
    tuned \
    tuned-ppd \
    tuned-utils \
    tuned-gtk \
    tuned-profiles-atomic \
    tuned-profiles-cpu-partitioning

# Enable student user generation
systemctl enable student-user.service
