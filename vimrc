" pyk's vim (c) 2022


" ████ Colors Scheme █████████████████████████████████████████████████████████

syntax on
colorscheme green
set t_Co=256


" ████ Basic config ██████████████████████████████████████████████████████████

set encoding=utf8
set ffs=unix,dos,mac

" Show line number and max width
set number
set numberwidth=4
set textwidth=80
set colorcolumn=79

" Spaces
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4

autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespaces

filetype plugin on
filetype indent on


" ████ Plugins  ██████████████████████████████████████████████████████████████

call plug#begin()
    " Solidity support
    Plug 'tomlion/vim-solidity'

    " Typescript & React support
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'

    " General syntax checker and formatter
    Plug 'dense-analysis/ale'
call plug#end()


