#!/bin/bash
set -e

if [ ! "$(ls -A /opt/MagicMirror/modules)" ]; then
    cp -Rn /opt/MagicMirror/default_modules/. /opt/MagicMirror
fi

if [ ! "$(ls -A /opt/MagicMirror/config)" ]; then
    wget https://raw.githubusercontent.com/Tekapp-SRL/YAMM---Yet-Another-Magic-Mirror-Container-Image/master/config/config.js -P /opt/MagicMirror/config
fi

exec "$@"