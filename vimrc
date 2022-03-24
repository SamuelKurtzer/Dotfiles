let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')           

Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'

Plug 'dhruvasagar/vim-table-mode'

Plug 'justinmk/vim-syntax-extra'

Plug 'Manu-sh/NeonVimColorscheme'

Plug 'vimwiki/vimwiki'

Plug 'tpope/vim-ragtag'

Plug 'junegunn/fzf.vim'

Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-fugitive'

Plug 'easymotion/vim-easymotion'

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

call plug#end()

" Personal Vim Settings
set nocompatible
filetype plugin indent on
syntax enable
set tabstop=4 shiftwidth=4 softtabstop=0 expandtab smarttab
set number relativenumber
set numberwidth=4
augroup numbertoggle
    " On changing from insert to normal switch between
    " relative and incremental numbers
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
set background=dark
set ignorecase smartcase
set cursorline ruler
set wildmenu
set lazyredraw incsearch hlsearch
set foldenable foldlevelstart=10 foldnestmax=10 foldmethod=indent

" Status Line
set showcmd
set laststatus=2
set noshowmode
function StatusLineMode()
    let status=mode()
    if status == "n"
        return "ぶ"
    elseif status == "i"
        return "く"
    elseif status == "v"
        return "見"
    else
        return "不"
    endif
endfunction

set statusline=
set statusline+=\ 所:
set statusline+=%F
set statusline+=%=
set statusline+=%1*
set statusline+=\ %{StatusLineMode()}\ 

" Leader
nnoremap <silent> <SPACE> <nop>
let mapleader=" "
nnoremap <silent> <leader>ts :terminal<CR>
nnoremap <BS> :nohlsearch<CR>
set path+=**
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
let &showbreak='↪ '
set list
set listchars=tab:▸─,trail:S       
set nolist wrap linebreak breakat&vim
map n <A-n>
set clipboard=unnamedplus
" remove the swap file warning and dont tell me that 
" the search is heading to the top.
set shortmess=As
" spell check settings
set spelllang=en_au
set spellfile=en.utf-8.add
nnoremap <F6> :setlocal spell!<CR>
set complete+=kspell
" set location of the viminfo file
set viminfo+=n~/.vim/viminfo
" set so you can move around a file without having to rely on
" whitespace.
" not much of a fan. set virtualedit=all

" ctags
command! MakeTags !ctags -R .

" set browser to firefox
let g:instant_markdown_browser = "firefox"

" fzf bindings 
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:ycm_language_server = [ { 'name': 'haskell', 'filetypes': [ 'haskell', 'hs', 'lhs' ], 'cmdline': [ 'hie-wrapper' , '--lsp'], 'project_root_files': [ '.stack.yaml', 'cabal.config', 'package.yaml' ] } ]

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
