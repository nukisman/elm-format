#!/usr/bin/env bash

SRC=$1

stack --verbosity info build \
    && cat ${SRC} \
    | .stack-work/install/x86_64-osx/lts-7.24/8.0.1/bin/elm-format-short-0.18 --stdin