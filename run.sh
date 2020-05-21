#!/bin/sh

CONFIG_PATH=/data/options.json

HTTP_PASS="$(jq --raw-output '.http_password' $CONFIG_PATH)"
TELNET_PASS="$(jq --raw-output '.telnet_password' $CONFIG_PATH)"
VLC_OPTIONS="$(jq --raw-output '.vlc_options' $CONFIG_PATH)"

cvlc -I http --extraintf telnet --http-port 9892 --telnet-port 4212 --aout=pulse \
    --http-password "${HTTP_PASS}" \
    --telnet-password "${TELNET_PASS}" \
    ${VLC_OPTIONS}
