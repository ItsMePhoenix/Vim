"Vundle plugin managing stuff
set nocompatible "allows use of features absent in vi
filetype off
set rtp+=~/.vim/bundle/Vundle.vim "runtime includes Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' "plugins for vundle to manage
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
":PluginList - lists configured plugins
":PluginInstall - installs plugins
":PluginSearch stuff - searches for 'stuff'
"PluginClean - confirms removal of unused plugins

"Mapping ctrl-P plugin
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'

"Airline theme
let g:airline_theme='molokai'

"NERDTree open on startup
autocmd vimenter * NERDTree

"synastic reccomended settings
set statusline+=%#warningmsg#
set statusline +=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Molokai theme
set t_Co=256 "tell vim using 256 color term
set background=dark "use dark background
colorscheme molokai "colorscheme to use
let g:rehash256=1 "use 256 color version

"display settings
set encoding=utf-8 "type of file of encoding
set ruler "show cursor location
set showmatch "highlight matching brackets
set showmode "show mode you're in
set laststatus=2

"write settings
set confirm "confirm quit if unsaved changes
set fileencoding=utf-8 "encode when saving
set nobackup "don't keep backup file

"edit settings
set backspace=indent,eol,start "backspace over everything
set expandtab "fill tabs with spaces
set nojoinspaces "no extra space after . when joing lines
set shiftwidth=8 "indentation depth 8 columns
set softtabstop=8 "backspace over 8 spaces like tabs
set tabstop=8 "tab length 8 columns
set textwidth=80 "wrap lines at column 80

"search settings
set hlsearch "highlight search results
set ignorecase "case insensitive search
set incsearch "incremental search
set smartcase "case insensitive unless caps used

"file type settings
filetype plugin on "load plugins based on file type
filetype indent on "indent based on file type

"syntax 
syntax enable "syntax highlighting

"numbering
set nu "absolute numbering
set rnu "relative numbering
"both makes hybrid numbering
