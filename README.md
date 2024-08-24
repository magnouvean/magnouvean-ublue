# magnouvean-ublue
My custom ublue os image.

## Building the iso
Run the following to build the iso:
```bash
mkdir ./iso-output
sudo podman run --rm --privileged --volume ./iso-output:/build-container-installer/build --security-opt label=disable --pull=newer \
ghcr.io/jasonn3/build-container-installer:latest \
IMAGE_REPO=ghcr.io/magnouvean \
IMAGE_NAME=magnouvean-ublue \
IMAGE_TAG=latest \
VERSION=40 \
VARIANT=Server
```
The installation iso can then be found at `./iso-output/deploy.iso`.