#!/bin/sh

set -e

# A friendlier error message if they don't have a profile
if ! [ -d "${HOME}/.mozilla/firefox" ]; then
    echo "No Firefox profiles found; nothing to repair."
    exit 1
fi

athrun infoagents zap-firefox-certs
exit 0
