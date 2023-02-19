* What it is:

Kicad 7 GUI for Podman/Docker

Based on Ubuntu 22.04 LTS

Using Kicad PPA


* How I use it:

Note: this is very insecure, but it's mostly so I don't have to find packages for my OS

podman run -it --ipc=host --userns=keep-id -e DISPLAY=:0.0 -v $HOME/.Xauthority:/data/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/kicad-data:/data/ kicad

