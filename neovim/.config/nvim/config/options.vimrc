" Theme 

" themes names https://github.com/rafi/awesome-vim-colorschemes
"colorscheme molokai
autocmd vimenter * colorscheme gruvbox
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE
set background=dark	"Setting dark or light mode
"hi Normal guibg=NONE ctermbg=NONE
hi Folded ctermbg=NONE guibg=NONE
hi FoldColumn ctermbg=NONE


" Commands ran automatically on certain events 
augroup autos
	autocmd!

	" Set dosini syntax highlighting for config files
	autocmd BufRead,BufNewFile config setf dosini
	
	" Ensure all .js files are treated as javascript
	autocmd BufEnter *.js :setlocal filetype=javascript
	autocmd FileType typescript set noexpandtab
	
	" New files start in insert
	autocmd BufNewFile * start
	autocmd!
	autocmd BufWinEnter * silent! loadview
  
"	# WIKI 
" #autocmd BufWritePost /home/niko/Documents/wiki/diary/* silent X

augroup END
"
" Press F4 to toggle highlighting on/off, and show current value. 
:noremap <F4> :set hlsearch! hlsearch?<CR>
"
" Run xrdb whenever Xdefaults or Xresources are updated. 
	autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
"
" I3 config syntax 
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
"

" Pass Config 
" redact_pass.vim: Switch off the 'viminfo', 'backup', 'writebackup',
" 'swapfile', and 'undofile' globally when editing a password in pass(1).
"
" This is to prevent anyone being able to extract passwords from your Vim
" cache files in the event of a compromise.
"
" Author: Tom Ryder <tom@sanctum.geek.nz>
" License: Same as Vim itself
"
if exists('g:loaded_redact_pass') || &compatible
	  finish
endif
if !has('autocmd') || v:version < 600
	finish
endif
let g:loaded_redact_pass = 1

" Check whether we should set redacting options or not
function! s:CheckArgsRedact()
" Ensure there's one argument and it's the matched file
	if argc() != 1 || fnamemodify(argv(0), ':p') !=# expand('<afile>:p')
		return
	endif							  

	" Disable all the leaky options globally
	set nobackup
	set nowritebackup
	set noswapfile
	set viminfo=
	if has('persistent_undo')
		set noundofile
	endif

	" Tell the user what we're doing so they know this worked, via a message and
" a global variable they can check
	echomsg 'Editing password file--disabled leaky options!'
	let g:redact_pass_redacted = 1
endfunction
" Auto function loads only when Vim starts up
augroup redact_pass
	autocmd!
	autocmd VimEnter
				\ /dev/shm/pass.?*/?*.txt
				\,$TMPDIR/pass.?*/?*.txt
				\,/tmp/pass.?*/?*.txt
				\ call s:CheckArgsRedact()
augroup END





