#! /bin/bash

podman run -d --name MM-01 \
--restart=always \
-v $PWD/config:/opt/MagicMirror/config:Z \
-v $PWD/modules:/opt/MagicMirror/modules:Z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:Z \
-p 12345:8080 \
localhost/magicmirror