#!/bin/bash

makepkg -sr --sign -f &&
mv ripper-0.0.1-1-x86_64.pkg.tar.zst ../blackbird/x86_64/
mv ripper-0.0.1-1-x86_64.pkg.tar.zst.sig ../blackbird/x86_64/
cd ../blackbird/x86_64/
repo-add --verify --sign blackbird.db.tar.gz *.pkg.tar.zst
git add . &&
git commit -m "latest" &&
git push &&
cd ../../ripper &&
git add . &&
git commit -m "latest" &&
git push 