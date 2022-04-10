# pyk's vim

This is my vim setup.

## Setup

Install [vim-plug](https://github.com/junegunn/vim-plug).

Clone repo to download all the configurations:

    git clone git@github.com:pyk/vim.git
    cp vim/.vimrc ~/.vimrc

Run `vim` and install all the plugins via `:PlugInstall`.


## Colors Scheme

Copy the color schemes to `~/.vim/colors`:

    cp -r vim/colors/*.vim ~/.vim/colors

Enable the colors cheme based on your mood on the `~/.vimrc`.

For example:

    syntax on
    colorscheme green

