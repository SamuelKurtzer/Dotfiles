call plug#begin('~/.vim/plugged')

Plug 'ajh17/VimCompletesMe'

Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'

Plug 'altercation/vim-colors-solarized'

Plug 'dhruvasagar/vim-table-mode'

Plug 'justinmk/vim-syntax-extra'

Plug 'Manu-sh/NeonVimColorscheme'

Plug 'vimwiki/vimwiki'

Plug 'tpope/vim-ragtag'

Plug 'junegunn/fzf.vim'

Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

Plug 'vim-scripts/OmniCppComplete'

Plug 'tpope/vim-fugitive'

Plug 'easymotion/vim-easymotion'

call plug#end()

set nocompatible

set mouse=a

set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab smarttab

set number relativenumber
set numberwidth=4
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave 	* set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter 		* set norelativenumber
augroup END

syntax enable
set background=dark

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set tags+=~/.vim/tags/cpp
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

set showcmd
set cursorline
set wildmenu
set lazyredraw
set incsearch
set hlsearch


set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

nnoremap <silent> <SPACE> <nop>
let mapleader=" "

nnoremap <silent> <leader>ts :terminal<CR>
nnoremap <BS> :nohlsearch<CR>

set ruler

set path+=**

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

let &showbreak='↪ '
set nolist wrap linebreak breakat&vim

map n <A-n>

set clipboard=unnamedplus

"ctags
command! MakeTags !ctags -R .

"spell check settings
set spelllang=en_au
set spellfile=en.utf-8.add
nnoremap <F6> :setlocal spell!<CR>
set complete+=kspell

"set browser to firefox
let g:instant_markdown_browser = "firefox"

"remove the swap file warning and dont tell me that the search is heading to
"the top.
set shortmess=As

"fzf bindings 
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>

"Remap movement to play well with wrapping.
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

"set location of the viminfo file
set viminfo+=n~/.vim/viminfo
