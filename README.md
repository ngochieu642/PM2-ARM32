# BUILD PM2 ON ARM ARCHITECT

## Initial steps

```shell
git clone https://github.com/ngochieu642/PM2-ARM32.git build_pm2
cd build_pm2
```

## 1. USING BUILDX

- This option uses `buildx` to build image for multi architect

```shell
git checkout pm2/buildx
. setup.sh
```

**Notice**: Must use the "dot space script" calling syntax. This execute the script under the current shell instead of loading another one. Don't use `bash` or `./`

```shell
bash build.sh
```

## 2. USING QEMU

- This option uses `qemu` to build image for arm architect
- The qemu binary files retrieves from qemu-user-static and copy the binary file. However, you might not need to care about this detail.

```shell
git checkout pm2/qemu
bash build.sh
```

## 3. USING TRAVIS CI

- This option uses `travis ci` to build image for arm architect.
- Travis CI builds the image in their cloud. You must integrate travis into github / gitlab to trigger the build.
- After setting up, you need to go to `More options` > `Settings` and set environment variables used in this build.
  - DOCKER_USERNAME: dockerhub username.
  - DOCKER_PASSWORD: dockerhub password.
  - REPO: dockerhub repository that will save the image.
  - BRANCH: VCS branch you want to use to build the image.

## RESULTS

- All the built images were pushed to this repo: https://hub.docker.com/r/ngochieu642/pm2-arm32.
- Available tags:
    - `latest` \
    Supported Architect
        - linux/amd64 35.11 MB
        - linux/arm/v6 34.31 MB
        - linux/arm/v7 33.83 MB
        - linux/arm64 35.18 MB
    - `qemu` \
    Supported Architect
        - linux/arm 35.17 MB
    - `travis` \
    Supported Architect
        - linux/arm 33.83 MB

## TESTING