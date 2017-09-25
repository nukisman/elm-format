#!/bin/bash

set -ex

VERSION="$(git describe --abbrev=8)"


## Collect files

#pushd package/win/elm-format-short
#tar zxvf "elm-format-short-0.17-${VERSION}-win-i386.tgz"
#zip "elm-format-short-0.17-${VERSION}-win-i386.zip" elm-format-short.exe
#tar zxvf "elm-format-short-0.18-${VERSION}-win-i386.tgz"
#zip "elm-format-short-0.18-${VERSION}-win-i386.zip" elm-format-short.exe
#popd

#cp -v package/win/elm-format-short/elm-format-short-*-"${VERSION}"-win-i386.zip ./

#for i in elm-format-short-{0.17,0.18}-${VERSION}-{mac-x64.tgz,win-i386.zip,linux-x64.tgz}; do
for i in elm-format-short-{0.17,0.18}-${VERSION}-{mac-x64.tgz,linux-x64.tgz}; do
  keybase pgp sign --detached --infile "$i" --outfile "$i".asc
  # github-release upload --user avh4 --repo elm-format-short --tag "$VERSION" --file "$BUILD".tgz
#   github-release upload --user avh4 --repo elm-format-short --tag "$VERSION" --file "$BUILD".tgz.asc
done
