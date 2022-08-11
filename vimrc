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

" Auto close brackets, quote, etc
inoremap " ""<left>
inoremap ' ''<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Highlight current line
set cursorline

set nobackup
set nowb
set noswapfile

" ████ Plugins  ██████████████████████████████████████████████████████████████

call plug#begin()
    " Solidity support
    Plug 'tomlion/vim-solidity'

    " Typescript & React support
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'

    " Rust support
    Plug 'rust-lang/rust.vim'

    " General syntax checker and formatter
    Plug 'dense-analysis/ale'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()


" ████ Airline config  ███████████████████████████████████████████████████████

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='minimalist'


" ████ Split panes  ██████████████████████████████████████████████████████████

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" ████ Ale Config ████████████████████████████████████████████████████████████

set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {'rust': ['rls']}
let g:ale_sign_error = 'xx'
let g:ale_sign_warning = 'ww'
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

