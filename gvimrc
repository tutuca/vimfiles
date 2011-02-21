set guifont=Inconsolata\ Bold\ 14
colorscheme darktango "underwater
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
set guioptions-=T
set guioptions-=m
filetype on

"
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 30
map <F4> :TlistToggle<cr>

"set tags+=$HOME/.vim/tags/python.ctags

"Applies plugin depending on filetype
filetype plugin on

"For cpp
set nocp
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=c++ /usr/include /usr/local/include
set tags+=$HOME/Repo/cms/ctags

let g:alternateExtensions_foo = "models.py,admin.py"

au BufNewFile *.py 0r ~/.vim/skel.py | let IndentStyle = "python"
