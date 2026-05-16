#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
set -oue pipefail

# 1. Ensure the uinput group exists inside the image
groupadd -f uinput

# 2. Pre-load the uinput kernel module on system boot
mkdir -p /usr/lib/modules-load.d
echo "uinput" > /usr/lib/modules-load.d/kanata.conf
