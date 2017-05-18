set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'Lokaltog/powerline' "  statuslines and prompts 
Plugin 'scrooloose/syntastic' " Linting
Plugin 'Valloric/YouCompleteMe' " AutoComplete
Plugin 'pangloss/vim-javascript' " indentation and syntax 
Plugin 'moll/vim-node' " Node Shortcuts
Plugin 'elzr/vim-json' " Json Highliter
Plugin 'Raimondi/delimitMate' " Closes brackets
Plugin 'nathanaelkane/vim-indent-guides'  " Visually display indenting
Plugin 'scrooloose/nerdcommenter' " Comment blocks for any language
Plugin 'othree/javascript-libraries-syntax.vim' " Syntax support for all other languages
Plugin 'christoomey/vim-tmux-navigator' " Tmux navigator
Plugin 'ekalinin/Dockerfile.vim' " Docker syntax
"Plugin 'powerline/powerline' "vim status bar

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"  ---------------------------------------------------------------------------
"  "  "  Default tabs settings
"  "  "
"  ---------------------------------------------------------------------------
"

syntax enable           " enable syntax processing
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
let NERDTreeShowHidden=1  " show hidden files in nerdtree
set backspace=indent,eol,start  " enables baackspace in insert mode
set clipboard=unnamed  " enables global clipboard
set autoindent                        " indent when creating newline

" Refer also to formatoptions+=o (copy comment indent to newline)
set nocopyindent

" Try not to change the indent structure on "<<" and ">>" commands. I.e. keep
" block comments aligned with space if there is a space there.
set nopreserveindent

" Smart detect when in braces and parens. Has annoying side effect that it
" won't indent lines beginning with '#'. Relying on syntax indentexpr instead.
" 'smartindent' in general is a piece of garbage, never turn it on.
set nosmartindent


"  ---------------------------------------------------------------------------
"  "  "  Shortcuts
"  "  "
"  ---------------------------------------------------------------------------
  "
  " SplitLayout navigations
  nnoremap <C-H> <C-W><C-H>
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>

  " Typing
  nnoremap <F4> :NERDTreeToggle 
  "nnoremap <SPACE> za " Enable folding with the spacebar

  " enable/disable highlighting quickly
  noremap <F3> :set hlsearch! hlsearch?<CR> 

  " Toggle Indent Guide
  nnoremap <C-I> :IndentGuidesToggle

  let mapleader="," " Set Leader key to ,
  
  let g:ctrlp_working_path_mode = 'rw' " Current working path
  let NERDTreeShowBookmarks=1 " Display NERDTree Bookmarks

  "NERDTree filter out file extentions
  let NERDTreeIgnore = ['\.swo$', '\.swp$']

  "set pastetoggle=<F2>

  "let g:NERDTreeChDirMode = 2 " Current working path

  " Set nopaste and paste
  " set pastetoggle=<F2>
  " enable/disable highlighting quickly
  "noremap <F3> :set hlsearch! hlsearch?<CR>
  "set go+=a               " Visual selection automatically copied to the clipboard
  "set paste  " Disable automatic comment insertion
  

"  "
"  ---------------------------------------------------------------------------
"  "  "  Colour Schemes
"  "  "
"  ---------------------------------------------------------------------------
  "
  syntax enable
  set background=dark
  " solarized options 
  let g:solarized_visibility = "high"
  let g:solarized_contrast = "high"
  let g:solarized_termcolors=256
  colorscheme solarized
  set cursorline          " highlight current line

  " Colours for Indent Guide
  let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=9
