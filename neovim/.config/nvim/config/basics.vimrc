"Paste from other programs and other buffers
set clipboard=unnamed,unnamedplus
"Cannot remember where I got this from
setlocal conceallevel=3						
"Making Vim either more Vi-compatible.
set nocompatible						
"Activate filetype plugin
filetype plugin on
"Enable SyntaxHighlighting 
syntax enable       			
"SyntaxHighlighting always on
syntax on									
"Makes Vim hard tabs instead of soft ones (default: on)
set noexpandtab
"Like tabstop but only for soft tabs (default 0)
set softtabstop=0
"Sets the length that vim indents by (default 8)
set shiftwidth=2
"Changes displayed length of hard tabs in Vim only, should almost always be equal to shiftwidth (default 8)
set tabstop=2
"Use an encoding that supports unicode.
set encoding=utf-8					
"Tell exactly relative number in relation to current position
set number relativenumber
"Avoid wrapping a line in the middle of a word.
set linebreak
"Enable mouse for scrolling and re sizing.
set mouse=a
"Enable search highlighting.
set hlsearch
"Ignore case when searching.
set ignorecase
"Press Space to turn off highlighting
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
"Highlight cursor position
set cursorline				
"Always display the status bar.
set laststatus=2
"Keeps 5 lines below and above the cursor 
"set scrolloff=5 						
"Enable line wrapping.
set wrap
"Fold based on indention levels.
"set foldmethod=indent
"Activates Folding
set foldenable	
"Activate vimrc marker folding
set foldmethod=marker
"Increase the undo limit.
set history=1000
"The shell used to execute commands.
set shell=/bin/zsh
"Disable spell check by default,use `set spell` command to load on demand!
set nospell
"Spell check language.
setlocal spelllang=en_us
"Spell file location
set spellfile=~/.vim/spell/en.utf-8.add
" Enable auto completion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Splits open at the bottom and right,unlike vim defaults.
set splitbelow splitright

