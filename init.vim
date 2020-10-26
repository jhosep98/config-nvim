set title " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los numeros de las lineas
set mouse=a " Permite la integracion del mouse (seleccionar texto, mover le cursor) 
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

" packages with plug:

call plug#begin('~/.vim/plugged')

" Themes:
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" config gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" config easymotion
let mapleader=" "

" config nerdtree
let NERDTreeQuitOnOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
