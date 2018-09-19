set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~\AppData\Local\nvim\bundle\Vundle.vim " Windows version
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rust-lang/rust.vim'

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
" Remaps terminal escape to esc.
tnoremap <Esc> <C-\><C-n>
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme base16-default-dark
filetype on
if @% == ""
  bd " For nvim-qt, when you open a file
endif
