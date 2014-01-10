#!/bin/bash
echo "Unloading vboxnetadp..."
sudo rmmod vboxnetadp
echo "Unloading vboxnetflt..."
sudo rmmod vboxnetflt
echo "Unloading vboxdrv..."
sudo rmmod vboxdrv
echo "Done!"
