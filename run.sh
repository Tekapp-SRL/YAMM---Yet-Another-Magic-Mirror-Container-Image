#! /bin/bash

podman run -d --name MM-01 \
--restart=always \
-v $PWD/config:/opt/MagicMirror/config:Z \
-p 12345:8080 \
localhost/magicmirror