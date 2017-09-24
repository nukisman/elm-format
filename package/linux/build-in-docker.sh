#!/bin/bash

set -ex

docker build -t elm-format-short-dev-linux .
docker run -v "$(pwd)":/elm-format-short -w /elm-format elm-format-short-dev-linux ./package/linux/build-package.sh
