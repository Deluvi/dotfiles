set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~\AppData\Local\nvim\bundle\Vundle.vim " Windows version
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'sebastianmarkow/deoplete-rust'
Plugin 'ujihisa/neco-look'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation
" Remaps switch pane to tab.
map <TAB> <C-w>
noremap j gj
noremap k gk
" Remaps terminal escape to esc.
tnoremap <Esc> <C-\><C-n>
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme base16-default-dark
filetype on
if @% == ""
  bd " For nvim-qt, when you open a file
endif
let g:goyo_height='100%'
let g:goyo_width=79
" Remaps for azerty keyboard comfort
noremap & 1
noremap é 2
noremap " 3
noremap ' 4
noremap ( 5
noremap - 6
noremap è 7
noremap _ 8
noremap ç 9
noremap à 0
noremap 3 "

" Deoplete stuff
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary='/Users/noebaylac/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/Users/noebaylac/misc/rust/src'

" Rust.vim stuff
let g:rustfmt_autosave = 1 " Enable fmt autosave on Rust
