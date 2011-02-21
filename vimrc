set guifont=Inconsolata\ Bold\ 14
colorscheme desert "underwater
syntax on
"set et
set ruler
set ts=4
set sw=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set hidden
set hlsearch
set incsearch
set wildignore=*.swp,*.bak,*.pyc
set nobackup
set undolevels=1000
set undofile
"set noswapfile
filetype on
set directory=~/.vim/temporaries
"check
set showmatch
"autocomplete file behves more like bash
set wildmode=longest,list

set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]%=[%p%%\ line:\ %l\ of\ %L\ col:\ %v]
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

"
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 30
map <F4> :TlistToggle<cr>
ab pdb import ipdb;ipdb.set_trace()

"set tags+=$HOME/.vim/tags/python.ctags

"Applies plugin depending on filetype
filetype plugin on

"For cpp
set nocp
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=c++ /usr/include /usr/local/include
set tags+=$HOME/Repo/cms/ctags

let g:alternateExtensions_foo = "models.py,admin.py"

au BufNewFile *.py 0r ~/.vim/skel.py | let IndentStyle = "python"
" Save when losing focus "
au FocusLost * :wa

inoremap <C-space> <Esc>

filetype plugin indent on
set autoindent
set smartindent

"show first commit where term under cursor was added
"map <leader>1 :!git log --reverse -p -S<cword> %<cr>
let mapleader = ","

" Needed on some linux distros.
" see
" http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

