if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
" File Browser
Plug 'scrooloose/nerdtree'
" Icon Themes
Plug 'ryanoasis/vim-devicons'
" Statusline
Plug 'itchyny/lightline.vim'

" Syntax & Programming Lenguage Related 

" Shows a | symbol for code indentation
Plug 'Yggdroot/indentLine'
" Adds syntax for most common file extensions. 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Syntax for I3WM
Plug 'mboughaba/i3config.vim'
" Cheat.sh	
Plug 'dbeniamine/cheat.sh-vim'



" Adding Functionallitty 
" Colorizer all text in the form #rgb, #rgba, #rrggbb, #rrgbbaa, rgb(...), rgba(...)
Plug 'lilydjwg/colorizer'
" Persisten session recorder
Plug 'mhinz/vim-startify'
" Fuzzy Finder
Plug 'junegunn/fzf.vim'


call plug#end()


