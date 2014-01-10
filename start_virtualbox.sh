#!/bin/bash
echo "Loading vboxdrv..."
sudo modprobe vboxdrv
echo "Loading vboxnetflt..."
sudo modprobe vboxnetflt
echo "Loading vboxnetadp..."
sudo modprobe vboxnetadp
echo "Starting VirtualBox..."
VirtualBox
