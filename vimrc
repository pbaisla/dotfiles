" Mostly from https://github.com/jez/vim-as-an-ide
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'HTML-AutoCloseTag'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xolox/vim-easytags'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'xolox/vim-misc'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'jez/vim-superman'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'gmarik/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on

hi clear SignColumn

syntax on
set backspace=indent,eol,start

set background=dark
set laststatus=2
set mouse=a
set shiftwidth=2
set tabstop=2
set tags=./tags;,~/.vimtags

set autoindent
set expandtab
set hlsearch
set incsearch
set number
set ruler
set showcmd
set smartindent

let g:airline#extensions#hunks#non_zero_only=1
let g:airline#extensions#tabline#enabled=1
let g:airline_detect_paste=1
"let g:airline_powerline_fonts=1
let g:easytags_events=['BufReadPost', 'BufWritePost']
let g:easytags_async=1
let g:easytags_dynamic_files=2
let g:easytags_resolve_links=1
let g:easytags_suppress_ctags_warning=1
let g:nerdtree_tabs_open_on_console_startup=0
"let g:solarized_termcolors=256
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

"colorscheme solarized
colorscheme molokai

nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
nmap <silent> <leader>b :TagbarToggle<CR>

noremap K :SuperMan <cword><CR>

augroup mSyntastic
    au!
    au FileType tex let b:syntastic_mode="passive"
augroup END

augroup mydelimitMate
    au!
    au FileType markdown let b:delemitMate_nesting_quotes=["`"]
    au FileType python let b:delimitMate_nesting_quotes=['"', "'"]
    au FileType tex let b:delimitMate_quotes=""
    au FileType tex let b:delimitMate_matchpairs="(:),[:],{:},`:'"
augroup END
