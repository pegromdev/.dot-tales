" Moving lines fast
map <S-j> 10j
map <S-k> 10k

" Short cutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"Move between buffers                   
:nnoremap <C-n> :bnext<CR>  
:nnoremap <C-b> :bprevious<CR>
" Markdown preview
:nnoremap <C-p> :! glow % <C-r> %
" Commands
:command Today pu=strftime('%c')



