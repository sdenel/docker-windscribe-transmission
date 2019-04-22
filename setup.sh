#!/bin/bash
set -e

#
# Install transmission
#
# moreutils provides sponge
apt install -y transmission-daemon moreutils jq

# No filter on IP. Anyway Docker binds by default only to localhost.
jq '."rpc-whitelist-enabled" = "false"' /etc/transmission-daemon/settings.json | sponge /etc/transmission-daemon/settings.json
# Remove user/pwd authentification
jq '."rpc-authentication-required" = "false"' /etc/transmission-daemon/settings.json | sponge /etc/transmission-daemon/settings.json
chmod 644 /etc/transmission-daemon/settings.json

#
# Cleaning the cache to limit the size of the image
#
apt clean
