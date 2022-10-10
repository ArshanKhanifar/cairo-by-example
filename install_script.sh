#!/bin/bash

conda create -n nile_proj python=3.9 -y
conda activate nile_proj

# we need gmp
brew install gmp

if [[ $(uname -m) == 'arm64' ]]; then
  echo "installing for macos M1"
  # important flag to build for MacOS M1: https://github.com/OpenZeppelin/nile/issues/22#issuecomment-945179452
  CFLAGS=-I`brew --prefix gmp`/include LDFLAGS=-L`brew --prefix gmp`/lib pip install -r requirements.txt
fi






