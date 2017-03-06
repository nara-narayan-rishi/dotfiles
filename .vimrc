set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'jistr/vim-nerdtree-tabs'                                                                                
 Plugin 'scrooloose/nerdtree'
 Plugin 'kien/ctrlp.vim'


"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html

" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on


"  ---------------------------------------------------------------------------
"  "  Settings
"  "  ---------------------------------------------------------------------------
"
" Enable folding/Collapse
set foldmethod=indent
set foldlevel=99

" Enable SplitLayouts
set splitbelow
set splitright

" One Liners
let NERDTreeIgnore=['\.pyc$', '\~$'] "Ignore files in NERDTree
set nu " Enable Line number
"set clipboard+=unnamed " System clipboard
set clipboard=unnamedplus
set backspace=2 " Allow backspace to work in insert mode
set go+=a               " Visual selection automatically copied to the clipboard
set paste  " Disable automatic comment insertion
let NERDTreeShowBookmarks=1 " Display NERDTree Bookmarks
let g:NERDTreeChDirMode = 2 " Current working path
let g:ctrlp_working_path_mode = 'rw' " Current working path


"  ---------------------------------------------------------------------------
"  "  "  Default tabs settings
"  "  "  ---------------------------------------------------------------------------

 set shiftwidth=2
 set tabstop=2
 set expandtab
 set autoindent " indent when moving to the next line while writing code


"  ---------------------------------------------------------------------------
"  "  "  Shortcuts
"  "  "  ---------------------------------------------------------------------------

" SplitLayout navigations
 nnoremap <C-H> <C-W><C-H>
 nnoremap <C-J> <C-W><C-J>
 nnoremap <C-K> <C-W><C-K>
 nnoremap <C-L> <C-W><C-L>

"  " Typing
 nnoremap <F4> :NERDTreeToggle
 nnoremap <SPACE> za " Enable folding with the spacebar

" enable/disable highlighting quickly
 noremap <F3> :set hlsearch! hlsearch?<CR>

" Comment out a block
 vnoremap <silent> # :s/^/#/<cr>:noh<cr>
 vnoremap <silent> -# :s/^#//<cr>:noh<cr>

" Set nopaste and paste
 set pastetoggle=<F2>



"  ---------------------------------------------------------------------------
"  "  "  Colour Schemes
"  "  "  ---------------------------------------------------------------------------


 syntax enable
 set background=dark
 " solarized options
 let g:solarized_visibility = "high"
 let g:solarized_contrast = "high"
 let g:solarized_termcolors=256
 colorscheme solarized
 set cursorline          " highlight current line

