#! /bin/bash

# assumes kicad image is created and called kicad

# also user and group id 1000

# Container defaults to shell so you can run kicad or other apps from command line

podman run -it --ipc=host --userns=keep-id -e DISPLAY=:0.0 -v $HOME/.Xauthority:/data/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/kicad-data:/data/ kicad

