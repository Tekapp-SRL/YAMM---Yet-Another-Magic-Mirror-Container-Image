#!/bin/bash
set -e

if [ ! "$(ls -A /opt/MagicMirror/modules)" ]; then
    cp -Rn /opt/MagicMirror/default_modules/. /opt/MagicMirror
fi

exec "$@"