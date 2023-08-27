#!/bin/bash

##script to set nvim 

D=~/.config/nvim/

mkdir $D
cp init.lua $D
cp -r lua/ $D
cp -r spell/ $D

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
