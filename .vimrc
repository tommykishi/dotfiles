"setting
set nocompatible
set number "line number
set title "file titile
syntax on
set tabstop=2
set ruler
set showcmd
set showmode
set vb t_vb=
set hidden
set ignorecase
set wrapscan
set incsearch
set display=lastline
set virtualedit=block
set backspace=indent,eol,start
set laststatus=2
set whichwrap=b,s,h,l,<,>,[,]
set scrolloff=8
set expandtab
set wildmenu wildmode=list:longest,full
set list lcs=tab:\|\ 
set shiftwidth=2
set noautoindent
set pumheight=10
set nrformats=
set autoread

"neo bundle
if has('vim_starting')
	if &compatible
		set nocompatible
	endif
	 set runtimepath+=~/.vim/bundle/neobundle.vim
endif

"plugin
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'mhinz/vim-startify'
call neobundle#end()

filetype plugin indent on
NeoBundleCheck

let g:startify_bookmarks = [
  \ '~/.vimrc',
  \ '~/.zshrc',
  \ ]

augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

"keymap
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <C-e> <C-Y>,
inoremap <silent> jj <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> b] :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> B] :blast<CR>
