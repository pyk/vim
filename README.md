# pyk's vim

This is my vim + tmux setup.

## Vim setup

Remove existing `~/.vim` directory if any.

Clone repo to download all the configurations:

    git clone git@github.com:pyk/vim.git ~/.vim

Run `vim` and install all the plugins via `:PlugInstall`.


### Colors Scheme

Enable the colors cheme based on your mood on the `~/.vim/vimrc`.

For example:

    syntax on
    colorscheme green


### Syntax checking & Formatting

I use [ale](https://github.com/dense-analysis/ale) for this.

It will auto-format files (ex: markdown, tsx) if `prettier` is installed on
`node_modules`.


## tmux

Install `tmux` via `brew`:

    brew install tmux

Setup the global config `Ctrl+b` then type the following:

    :set -g status off

