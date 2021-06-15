#! /bin/bash

sudo sysctl net.ipv4.ip_unprivileged_port_start=79 

podman run -d --name MM-Caddy \
--cap-add=CAP_NET_BIND_SERVICE \
-p 80:80 -p 443:443 \
-v $PWD/Caddyfile:/etc/caddy/Caddyfile:Z \
-v caddy_data:/data caddy;

podman run -d --name MM-01 \
-p 10001:8080 \
-v $PWD/config/MM-01:/opt/MagicMirror/config:z \
-v $PWD/modules:/opt/MagicMirror/modules:z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:z \
localhost/magicmirror;

podman run -d --name MM-02 \
-p 10002:8080 \
-v $PWD/config/MM-02:/opt/MagicMirror/config:z \
-v $PWD/modules:/opt/MagicMirror/modules:z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:z \
localhost/magicmirror;

podman run -d --name MM-03 \
-p 10003:8080 \
-v $PWD/config/MM-03:/opt/MagicMirror/config:z \
-v $PWD/modules:/opt/MagicMirror/modules:z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:z \
localhost/magicmirror;

podman run -d --name MM-04 \
-p 10004:8080 \
-v $PWD/config/MM-04:/opt/MagicMirror/config:z \
-v $PWD/modules:/opt/MagicMirror/modules:z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:z \
localhost/magicmirror;