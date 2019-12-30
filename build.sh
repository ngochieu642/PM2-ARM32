# Fix binfmt_misc
docker run --rm --privileged docker/binfmt:66f9012c56a8316f9244ffd7622d7c21c1f6f28d

# buildx to build multi architects
docker buildx build -t ngochieu642/pm2-arm32 --platform=linux/arm/v7,linux/arm/v6,linux/arm64,linux/amd64 . --push