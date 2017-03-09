set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add NerdTree
Plugin 'scrooloose/nerdtree'
" Add solarized scheme
Plugin 'altercation/vim-colors-solarized'
" Add Zenburn color scheme
Plugin 'jnurmine/Zenburn'
" Add Railscasts color scheme
Plugin 'jpo/vim-railscasts-theme'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Enables syntax highlighting by default.
syntax on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

" Personal set up of scheme, tabs, folding, etc.
set nocompatible
filetype plugin on
filetype indent on
syntax enable

" Settings for the solarized colorscheme
"colorscheme solarized
"set background=light
"set background=dark
"set t_Co=16
"let g:solarized_termcolors=256
" Nice default colorschemes
colorscheme slate " Used slate for couple of years: blue and orange
"colorscheme torte " Polished blueish colorscheme
set t_Co=256

set number
set hlsearch
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab " expand tabs with 4 blanks
set foldmethod=indent
set foldlevel=4
set textwidth=79

" Settings for LaTeX-Suite
let g:Tex_HotKeyMappings='itemize,enumerate,gather*,align*'
let g:Tex_PromptedEnvironments='equation*,defn,satz,beweis,bsp,itemize,cases,aligned,gathered,eqnarray*,\[,$,align,gather,equation'
let g:Tex_PromptedCommands='vec,footnote,label,caption,vref,eqref,ref,pageref'
set grepprg=grep\ -nH\ $*
set iskeyword+=:
set winaltkeys=no

" NERD Tree
map <leader>n :NERDTreeToggle<CR>

" Python config for PEP 7 & 8
"source /home/max/.vim/vimrc.python

" ruby-vim set up
filetype on
filetype plugin on
"au FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby compiler ruby
autocmd FileType ruby set tabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
imap <S-CR>    <CR><CR>end<Esc>-cc

" Set up spell checking for LaTeX
autocmd FileType tex setlocal spell spelllang=en_us
