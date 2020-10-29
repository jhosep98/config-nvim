source $HOME/.config/nvim/themes/airline.vim

set title " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los numeros de las lineas
set mouse=a " Permite la integracion del mouse (seleccionar texto, mover le cursor) 
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set paste
set nolist

" packages with plug:

call plug#begin('~/.vim/plugged')

" Themes:
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-signify'

" Snippets
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'

" Language specific
Plug 'styled-components/vim-styled-components'
Plug 'leafgarland/typescript-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'

" icons
Plug 'ryanoasis/vim-devicons'

call plug#end()

" config gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" config coc
let g:coc_global_extensions = ['coc-tsserver']

" config easymotion
let mapleader=" "

" config nerdtree
let NERDTreeQuitOnOpen=1

" config files
noremap <Leader>gs :CocSearch
noremap <Leader>fs :Files<Cr>

" config neoformat
nmap <Leader>n :Neoformat<CR>

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" config coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
