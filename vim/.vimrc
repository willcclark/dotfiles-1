set nocompatible
set shell=bash
filetype plugin indent on
syntax on
colorscheme base16-materia

set termguicolors
set hidden
set confirm
set laststatus=2
set showcmd
set scrolloff=3
set wildmenu
set wildignorecase
set wildcharm=<C-Z>
set mouse=a
set belloff=all
set ttimeoutlen=100
set bs=indent,eol,start
set number
set colorcolumn=81

" Keep swap files out of the way
set backupdir=~/.cache//
set directory=~/.cache//

set shiftwidth=4
set softtabstop=-1
set expandtab
set autoindent

set incsearch
set ignorecase
set smartcase

let g:bufferline_show_bufnr = 0
let g:bufferline_rotate = 2

let g:vcm_direction='p'

" Fly between buffers
nnoremap <leader>b :b <C-Z><S-Tab>
" Cycle between buffers
nnoremap <leader>n :bn<CR>
nnoremap <leader>N :bp<CR>
" Unload current buffer
nnoremap <silent> <leader>d :bd<CR>
" Save and unload current buffer
nnoremap <silent> <leader>D :w \| bd<CR>

" Quickly edit/source vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" <C-L> (redraw screen) also clears search highlighting
nnoremap <silent> <C-L> :noh<CR><C-L>

" <F2> toggles spellcheck on/off
nnoremap <silent> <F2> :setlocal spell! spell?<CR>
" Replace word with first spell suggestion
nnoremap <leader>s 1z=

" Insert date
nnoremap <leader>f "=strftime('%F')<CR>p

" Automatically resize split windows when Vim is resized
au VimResized * wincmd =

" General file type settings
au FileType text setl tw=80
au FileType gitcommit setl spell
au FileType python setl cc=80
au FileType html setl sw=2 spell tw=80
au FileType css setl sw=2
au FileType markdown setl spell tw=80
au FileType lua setl noet ts=4

" Read in template files
au BufNewFile *.* sil! exe '0r ~/.vim/templates/skeleton.'.expand("<afile>:e") | norm G

" Use markdown for notes
au BufEnter ~/Documents/notes/* set ft=markdown

" Settings for pass
if filereadable(expand('~/.password-store/.vimrc'))
    au BufEnter /dev/shm/pass.* source ~/.password-store/.vimrc
endif

" Abbreviations
ca vb vert sb
