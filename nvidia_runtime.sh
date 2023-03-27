#!/bin/bash

DAEMONPATH=/etc/docker/daemon.json

if [[ -f "$DAEMONPATH" ]]; then
    chmod +x /etc/docker/daemon.json
fi

cat <<EOF > /etc/docker/daemon.json
{
    "runtimes": {
        "nvidia":{
            "path": "nvidia-container-runtime",
            "runtimeArgs": []
        } 
    },
    "default-runtime": "nvidia"
}