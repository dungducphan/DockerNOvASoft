
#!/usr/bin/zsh

# Open xhost port
if [[ -z "$IP" ]]; then
    export IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
fi
xhost + $IP

# Run
docker run --privileged --rm -it -e DISPLAY=$IP:0 --mount type=bind,src=`pwd`/data,dst=/home dungphan90/novadev_cvmfs:slf6
