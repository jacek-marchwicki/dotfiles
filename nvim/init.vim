" vim: foldmethod=marker foldlevel=0 foldenable

" Plugins {{{
call plug#begin('~/.local/nvim/plugins')

Plug 'tpope/vim-sensible'

" Visual
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-bufferline'
Plug 'itchyny/lightline.vim'
Plug 'myusuf3/numbers.vim'
Plug 'nathanaelkane/vim-indent-guides'

" Languages
Plug 'Blackrush/vim-gocode'
Plug 'Shirk/vim-gas'
Plug 'cespare/vim-toml'
Plug 'dag/vim-fish'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'LnL7/vim-nix'
Plug 'lervag/vimtex'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Project management
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-grepper'

" TMux Integration
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" Completion
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Code manipulation
Plug 'Raimondi/delimitMate'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'

" Utils
Plug 'dahu/EditorConfig'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/webapi-vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'mjbrownie/swapit'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'majutsushi/tagbar'

call plug#end()
" }}}
" Colors {{{
" Show 80 column
set colorcolumn=80
set cursorline

" Use Dark Solarized theme
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
" }}}
" Per directory .nvimrc {{{
set exrc
" Disable unsafe commands in local .nvimrc
set secure
" }}}
" User interface {{{
" Ignore all automatic files and folders
set wildignore=*.o,*~,*.pyc,.git,*/tmp/*

" Display tabs and trailing spaces visually
set list listchars=tab:→\ ,trail:·

" Line numbers are good
set number

" Show current mode down the bottom
set noshowmode

" Set utf8 as standard encoding
set encoding=utf8

" Shorten interruptive command output
set shortmess=atI

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" Wrap line on movements
set whichwrap+=<,>,h,l,[,]

" Use system clippboard as default
set clipboard=unnamed
" }}}
" Autoupdate {{{
" Automatically reload changed files
set autoread

" Save on buffer change
set autowriteall
" }}}
" Identation {{{
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set textwidth=80
set nowrap       " Don't wrap lines
set linebreak    " Break lines at convenient points
set formatoptions+=t
" }}}
" Key mappings {{{
let mapleader = "\<space>"

" Swap 'go to marker' mappings
nnoremap ' `
nnoremap ` '

" <Home> goes to the beginning of the text on first press and to the beginning
" of the line on second press. It alternates afterwards.
nnoremap <expr> <Home> virtcol('.') - 1 <= indent('.') && col('.') > 1 ? '0' : '_'

nnoremap gV `[v`]

" Closing
nnoremap ZS :xa<CR>
nnoremap ZA :qa<CR>
nnoremap ZX :cq<CR>

" Split line at cursor position
nnoremap K     i<CR><Esc>k$
nnoremap Q     K

" Simplify switching to EX mode
nnoremap ; :
vnoremap ; :
nnoremap : ;

" Fast paste from system clipboard
inoremap <C-R><C-R> <C-R>*

" Some useful toggles for plugins
noremap <F2> :UndotreeToggle<CR>
noremap <F3> :NumbersToggle<CR>
noremap <F4> :IndentGuidesToggle<CR>
" }}}
