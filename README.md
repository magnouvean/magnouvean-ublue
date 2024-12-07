# magnouvean-ublue

## ISO generation
To generate an iso for the nvidia-image, run the following:
```bash
sudo podman run --rm --privileged --volume .:/build-container-installer/build ghcr.io/jasonn3/build-container-installer:latest IMAGE_REPO=ghcr.io/magnouvean IMAGE_NAME=magnouvean-ublue-nvidia VERSION=41 IMAGE_TAG=latest VARIANT=Silverblue
```
or for the regular, run the following:
```bash
sudo podman run --rm --privileged --volume .:/build-container-installer/build ghcr.io/jasonn3/build-container-installer:latest IMAGE_REPO=ghcr.io/magnouvean IMAGE_NAME=magnouvean-ublue-main VERSION=41 IMAGE_TAG=latest VARIANT=Silverblue
```
Then the iso should be generated to `./deploy.iso`
