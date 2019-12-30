# buildx to build multi architects
docker buildx build -t ngochieu642/pm2-arm32 --platform=linux/arm/v7,linux/arm/v6,linux/arm64,linux/amd64 . --push