"""""""""""
"vim-plug 
"""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"""""""""""
" Plugins
"""""""""""
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()


"""""""""""
" general
"""""""""""
set autoindent              "indents a new line to the same as current
set smartindent             "indent
"set cindent

set tabstop=4                "tab width
set shiftwidth=4             "indentation width
set expandtab

set ignorecase
set smartcase                "use case insensitive search, except when using capital letters

set showmatch                "highlight matching brackets

set number                   "line numbering

syntax on                    "syntax highlighting
colorscheme dracula " koehler torte

set laststatus=2

""""""""""""""
" Line width
""""""""""""""

highlight OverLength ctermbg=red ctermfg=DarkBlue guibg=#FFD9D9
match OverLength /\%80v.\+/

