#!/bin/bash

set -ex

./tests/run-tests.sh
cabal install

mv -i .cabal-sandbox/bin/elm-format-short-0.17 /usr/local/bin/elm-format-short

/usr/local/bin/elm-format-short --version 2>&1 | head -n1
which elm-format-short
