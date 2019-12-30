# Enable build
export DOCKER_CLI_EXPERIMENTAL=enabled

# Fix binfmt_misc
docker run --rm --privileged docker/binfmt:66f9012c56a8316f9244ffd7622d7c21c1f6f28d