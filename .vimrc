"I don't want full super duper vi compatibility
set nocompatible
"Because Vundle demands the blood of the infidel(?)
filetype off

"I want my syntax to come from the syntax gods above in Prav
syntax on

set encoding=utf8

"Plugins area ------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'DoxygenToolkit.vim' "Documenting tool. This is gold
Plugin 'gerw/vim-latex-suite' "LaTeX powah
Plugin 'tpope/vim-fugitive' "Yo kid git sum git
Plugin 'bling/vim-airline' "We all like kawaii status(?)
Plugin 'c.vim' "c/c++
Plugin 'Valloric/YouCompleteMe' "Autocomplete yo

Plugin 'xolox/vim-misc'	"Dependency for vim-notes
Plugin 'xolox/vim-notes' "Good notes yeah

Plugin 'ryanoasis/vim-devicons' "To get some nice icons this goes last
call vundle#end()
"-------------------------------------------------------------------------------

"Vundle needs this. Nav shall provide.
filetype plugin indent on

colorscheme jellybeans	"colorz

set number	"Because we liek our lines numbered
set backspace=indent,eol,start

"Because having some lines above and below is ALWAYS good and important
set scrolloff=8

"Indenting stuff
set shiftwidth=3
set tabstop=3
set noexpandtab	"Because I like my C++ to be tabbed

"Folding stuff
set foldmethod=syntax

set visualbell	"quiet alert plz volvo

"Searching stuff
set showmatch
set hlsearch

"Getting vim to keep the width I like
set textwidth=80
set winwidth=84 "just in case the line number gets sort of big

"Pick up the auto-setting modelines at the beggining of the file
set modeline

"Set grep as the :grep command application
set grepprg=grep\ -nH\ $*

"Indent by filetype
filetype indent on

"LaTeX is way tastier than TeX
let g:tex_flavor = 'latex'

"c.vim settings ----------------------------------------------------------------
"Compiler flags
let g:C_CFlags = '-Wall -g -O0 -std=c++11 -c'
"-------------------------------------------------------------------------------

"LaTeXsuite settings -----------------------------------------------------------
let hs_highlight_delimiters = 1
let hs_highlight_boolean = 1
let hs_highlight_types = 1
let hs_highlight_more_types = 1
let hs_highlight_debug = 1
"-------------------------------------------------------------------------------

"YouCompleteMe settings --------------------------------------------------------
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"-------------------------------------------------------------------------------

"Airline settings---------------------------------------------------------------
let g:airline_theme = "base16"

"let g:airline#extensions#tabline#enabled = 1 "Getting some next gen tabs
set laststatus=2	"Getting airline from t=0

let g:airline_powerline_fonts = 1	"Getting fancy fonts yeeeeeeeeeee
"-------------------------------------------------------------------------------

"Filetype specific settings ----------------------------------------------------
"No tab expanding for Lua
au Filetype lua setl noet

"Tab expanding to 4 spaces for Python
au Filetype python setl et ts=4 sw=4
"-------------------------------------------------------------------------------
