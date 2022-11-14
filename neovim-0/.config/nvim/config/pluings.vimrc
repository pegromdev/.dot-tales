

"	Lightline 

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
			\'colorscheme': 'seoul256',
			\'active': {
			\'left': [ [ 'mode', 'paste' ],[ 'gitbranch', 'readonly', 'filename','modified' ] ],
			\'right': [	['lineinfo' ],[ 'percent' ],['cocstatus','currentfunction','fileencoding','filetype'] ],
			\},
			\'component_function': {
			\'gitbranch': 'FugitiveHead',
			\'cocstatus': 'coc#status',
			\'currentfunction': 'CocCurrentFunction'
			\}
			\}


"	Nerd tree

map <C-t> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" nerdTree highlight
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeChDirMode=2 "nerdtree and current directory
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

" Starttify
let g:startify_change_to_dir = 0
let g:startify_custom_header =[]
let g:startify_bookmarks = [ 
			\ {'i': '/home/niko/.config/i3/config'}, 
			\	{'d': '~/.dot-tales/'}, 
			\	{'v': '/home/niko/.config/nvim/config/'}, 
			\	{'z':	'/home/niko/.zshrc'},
			\	]
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Last edits']            },
          \ { 'type': 'dir',       'header': ['   Recent in cwd '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
