# Install Packer

`git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
`
# Move to config folder

`cd ~/.config`

## Clone this repo

`git clone https://github.com/ninjoala/ninjos_nvim_config`

## Change name of directory

Ensure you're standing in ~/.config
`mv ninjos_nvim_config nvim`

## Source packer.lua
`nvim /.config/nvim/lua/ninjoala`

Then type:
`:so`

Press enter

Then type

`:PackerSync`

Congrats! It should be installed now.

