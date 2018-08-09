## Usage
build-kernel-rpm script requires, inside the docker container:
 - KERNEL_VERSION environment variable
 - rights to read /in/config or /in/config.gz or /proc/config.gz
 - rights to write in directory /out

You can build a rpm with the desired version like this:

    docker run --rm -t -e KERNEL_VERSION=4.17.13 -v /data/in:/in -v /data/out:/out edausq/docker-kernel-builder
Then you should find your rpms in /data/out folder
