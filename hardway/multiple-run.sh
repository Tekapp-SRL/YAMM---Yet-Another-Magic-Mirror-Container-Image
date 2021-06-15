#! /bin/bash

sudo sysctl net.ipv4.ip_unprivileged_port_start=79 

podman pod create --name MagicMirror -p 80:80 -p 443:443;

podman run -d --name MM-Caddy \
--restart=always \
--pod=MagicMirror \
--cap-add=CAP_NET_BIND_SERVICE \
-v $PWD/Caddyfile:/etc/caddy/Caddyfile \
-v caddy_data:/data caddy;

podman run -d --name MM-01 \
--restart=always \
--pod=MagicMirror \
-v $PWD/MM-01/config:/opt/MagicMirror/config:z \
-v $PWD/modules:/opt/MagicMirror/modules:z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:z \
localhost/magicmirror;

podman run -d --name MM-02 \
--restart=always \
--pod=MagicMirror \
-v $PWD/MM-02/config:/opt/MagicMirror/config:z \
-v $PWD/modules:/opt/MagicMirror/modules:z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:z \
localhost/magicmirror;

podman run -d --name MM-03 \
--restart=always \
--pod=MagicMirror \
-v $PWD/MM-03/config:/opt/MagicMirror/config:z \
-v $PWD/modules:/opt/MagicMirror/modules:z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:z \
localhost/magicmirror;

podman run -d --name MM-04 \
--restart=always \
--pod=MagicMirror \
-v $PWD/MM-04/config:/opt/MagicMirror/config:z \
-v $PWD/modules:/opt/MagicMirror/modules:z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:z \
localhost/magicmirror;