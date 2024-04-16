#!/usr/bin/env bash
set -euo pipefail

# Enable ntp time server sync
timedatectl set-ntp true

# Make sure image is signed
systemctl enable birralee-sign-image.service
