










call plug#begin('~/.vim/plugged')

" Themes:
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'

call plug#end()

" config gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" config easymotion
let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
