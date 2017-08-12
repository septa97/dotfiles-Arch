set nocompatible              " be iMproved, required
filetype off                  " required

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Third-party packages
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier', { 
	\ 'do': 'npm install', 
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

" NERDtree configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

" vim-prettier configuration
let g:prettier#autoformat = 0
let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#parser = 'babylon'
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql Prettier

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Custom configuration
filetype plugin indent on   " Load plugins according to detected filetype.
syntax on                   " Enable syntax highlighting.

set autoindent              " Indent according to previous line.
set expandtab               " Use spaces instead of tabs.
set softtabstop=4           " Tab key indents by 4 spaces.
set shiftwidth=4            " >> indents by 4 spaces.
set shiftround              " >> indents to next multiple of 'shiftwidth'.

set backspace=indent,eol,start  " Make backspace work as you would expect.
set hidden                  " Switch between buffers without having to save first.
set laststatus=2            " Always show statusline.
set display=lastline        " Show as much as possible of the last line.

set number                  " Always show line numbers.

set showmode                " Show current mode in command-line.
set showcmd                 " Show already typed keys when more are expected.

set incsearch               " Highlight while searching with / or ?.
set hlsearch                " Keep matches highlighted.

"set ttyfast                 " Faster redrawing.
"set lazyredraw              " Only redraw when necessary.

"set splitbelow              " Open new windows below the current window.
"set splitright              " Open new windows right of the current window.

set cursorline              " Find the current line quickly.
set wrapscan                " Searches wrap around end-of-file.
set report=0                " Always report changed lines.
set synmaxcol=200           " Only highlight the first 200 columns.

"set list                    " Show non-printable characters.

colorscheme ron
let $TERM='xterm-256color'
