set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' " Plugin manager
Plugin 'scrooloose/nerdtree' " IDE Like File browser
Plugin 'kien/ctrlp.vim' " Filesearch 
Plugin 'flazz/vim-colorschemes' " vim colour themes
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
Plugin 'evanmiller/nginx-vim-syntax' " Nginx syntax
Plugin 'leafgarland/typescript-vim' " Typescript syntax
"Plugin 'maksimr/vim-jsbeautify' " Format JS HTML CSS #Must install 
Plugin 'vim-airline/vim-airline' " Lightweight powerline (Kiff status bar)
Plugin 'vim-airline/vim-airline-themes' " Themes
Plugin 'tpope/vim-fugitive' " Git commands in vim
Plugin 'martinda/Jenkinsfile-vim-syntax' " Jenkinsfile syntax
Plugin 'nono/vim-handlebars' " Handlebars syntax

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"  ---------------------------------------------------------------------------
"  Tab settings
"  ---------------------------------------------------------------------------

syntax enable           " enable syntax processing
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use spaces width
set shiftwidth=2
" On pressing tab, insert spaces

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

"  ---------------------------------------------------------------------------
"   Settings
"  ---------------------------------------------------------------------------

set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
let NERDTreeShowHidden=1  " show hidden files in nerdtree
set backspace=indent,eol,start  " enables baackspace in insert mode
set clipboard=unnamedplus  " enables global clipboard (Requires gvim installed)
set autoindent                        " indent when creating newline
set mouse=a " enable tmux mouse scrolling in vim
let g:syntastic_javascript_checkers = ['jshint'] "Enable linting with jshint
"let g:javascript_plugin_jsdoc = 1
au BufRead,BufNewFile *.conf set ft=nginx "Enable nginx syntax"
set laststatus=2  " always show status bar

" Refer also to formatoptions+=o (copy comment indent to newline)
set nocopyindent

" Try not to change the indent structure on "<<" and ">>" commands. I.e. keep
" block comments aligned with space if there is a space there.
set nopreserveindent

" Smart detect when in braces and parens. Has annoying side effect that it
" won't indent lines beginning with '#'. Relying on syntax indentexpr instead.
" 'smartindent' in general is a piece of garbage, never turn it on.
set nosmartindent

"" turn off auto-insert of comments
augroup auto_comment
      au!
          au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        augroup END

" Close scratch/preview window automatically
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
      
"  ---------------------------------------------------------------------------
"     Airline Plugin
"  ---------------------------------------------------------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
" enable/disable syntastic integration >
let g:airline#extensions#syntastic#enabled = 1
 
" enable/disable fugitive/lawrencium integration 
let g:airline#extensions#branch#enabled = 1
" to only show the tail, e.g. a branch 'feature/foo' becomes 'foo', use
let g:airline#extensions#branch#format = 1

" enable/disable YCM integration
let g:airline#extensions#ycm#enabled = 1


"  ---------------------------------------------------------------------------
"     Shortcuts
"  ---------------------------------------------------------------------------

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


  "let g:NERDTreeChDirMode = 2 " Current working path

  " Set nopaste and paste
  " set pastetoggle=<F2>
  " enable/disable highlighting quickly
  "noremap <F3> :set hlsearch! hlsearch?<CR>
  "set go+=a               " Visual selection automatically copied to the clipboard
  "set paste  " Disable automatic comment insertion

"  ---------------------------------------------------------------------------
"     Move vim files to central location
"  ---------------------------------------------------------------------------

" swap files (.swp) in a common location
" // means use the file's full path
set dir=~/.vim/_swap//

" backup files (~) in a common location if possible
set backup
set backupdir=~/.vim/_backup/,~/tmp,.

" turn on undo files, put them in a common location
set undofile
set undodir=~/.vim/_undo/


"  ---------------------------------------------------------------------------
"     Colour Schemes
"  ---------------------------------------------------------------------------

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
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=8

