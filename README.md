### YAMM - Yet Another Magic Mirror Container Image

[![CI_Container_build_and_creation](https://github.com/Tekapp-SRL/YAMM---Yet-Another-Magic-Mirror-Container-Image/actions/workflows/CI_Container_build_and_creation.yml/badge.svg)](https://github.com/Tekapp-SRL/YAMM---Yet-Another-Magic-Mirror-Container-Image/actions/workflows/CI_Container_build_and_creation.yml)

Based on RHEL UBI 8 (Universal Base Image) "Another Magic Mirror Container Image" is available for RHEL / CentOS / Fedora Enviroment.

Original Magic Mirror: https://github.com/MichMich/MagicMirror 

---

#### Getting Started (Easy Way)

```
podman run -d --name MM-01 \
--restart=always \
-v $PWD/config:/opt/MagicMirror/config:Z \
-v $PWD/modules:/opt/MagicMirror/modules:Z \
-v $PWD/css/custom.css:/opt/MagicMirror/css/custom.css:Z \
-p 12345:8080 \
docker.io/tekappsrl/yamm-yet-another-magic-mirror-container-image:latest
```
---
#### Getting Started (Hard Way)

```
Please see hardway/multiple-run.sh
```
---

#### Compatibility Check

|  OS           | Result  |
|---            |---      |
| RHEL 8.4      | ✔️       |
| CentOS 8.3    | ❓      |
| Fedora 33     | ❓      |
| Fedora 34     | ❓      |
