set nocompatible
filetype plugin indent on
syntax on
colorscheme base16-tomorrow-night

set termguicolors
set hidden
set confirm
set title
set laststatus=2
set cmdheight=2
set showcmd
set scrolloff=3
set wildmenu wildignorecase wildmode=longest:full,full
set number relativenumber
set splitbelow splitright
set mouse=a
set belloff=all
set ttimeoutlen=100
set backspace=indent,eol,start
set textwidth=80
set colorcolumn=81
set foldmethod=syntax foldlevelstart=99
set conceallevel=2
set formatoptions-=t
set formatoptions+=j
set nojoinspaces
set incsearch
set ignorecase smartcase
set spell
set cinoptions+=:0

set shiftwidth=4
set softtabstop=-1
set expandtab
set autoindent

let c_no_comment_fold = 1
let c_no_curly_error = 1
let tex_flavor = 'latex'
let vcm_direction = 'p'
let vim_markdown_auto_insert_bullets = 0
let vim_markdown_frontmatter = 1
let vim_markdown_new_list_item_indent = 0

" Yank/put to/from system clipboard
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>P "+P

" <C-L> (redraw screen) also clears search highlighting
nnoremap <silent> <C-L> :noh<CR><C-L>

" Replace word with first spell suggestion
nnoremap <leader>z 1z=

" vimdiff
if &diff
  map <leader>1 :diffget LOCAL<CR>
  map <leader>2 :diffget BASE<CR>
  map <leader>3 :diffget REMOTE<CR>
endif

cnoremap <C-A> <Home>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>

tnoremap <Esc> <C-\><C-n>

ca vb vert sb

" General file type settings
au BufEnter .luacheckrc setl noet ts=4
au FileType c setl noet ts=4
au FileType cpp setl noet ts=4
au FileType css setl sw=2
au FileType gitconfig setl noet sw=8
au FileType go setl noet ts=4
au FileType html setl sw=2 fo+=t
au FileType java setl tw=100 cc=101
au FileType lua setl sw=3
au FileType make setl sw=8
au FileType python setl tw=79 cc=80
au FileType tex setl fo+=t
au FileType text setl fo+=t
au FileType vim setl sw=2
au FileType yaml setl sw=2

au BufEnter ~/src/minetest/*.lua setl noet ts=4 sw=4

if has('nvim')
  au TermOpen * setl nospell
else
  au TerminalOpen * setl nospell
endif

" Automatically resize split windows when Vim is resized
au VimResized * wincmd =
