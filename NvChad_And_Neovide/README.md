# NvChad + Neovide config...

## Why?
I found myself playing around with [Neovide (NVIM Rust Client)](https://github.com/neovide/neovide) and the NvChad setup. The result is amazing.

  I did this on Windows so I expect it to work on my Linux workstation too.

## Setup:
First of all we need to install Nvim v0.61.0 otherwise this config won't work.
After this we need to install mingw and packer (for NvChad).
We also need git and a Nerd Fonts compatible font.

### On Windows:
Using [scoop](https://scoop.sh/):
- Mingw: `scoop install mingw`
- Neovim: `scoop install neovim`

To install NvChad and packer:

In powershell:
- Packer: `git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`
- NvChad: `git clone https://github.com/NvChad/NvChad nvim --depth 1`

After all this is done copy the "nvim" folder to %localappdata%.

Finally copy the content of this folder in %localappdata%\nvim\lua
