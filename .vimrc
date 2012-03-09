" set the background to dark, so that text shows up properly.
set background=dark

" turn on the ruler.
set ruler

" turn off wrapping.
set nowrap

" set shifts and tabs to the same value and turn all tabs to spaces.
set shiftwidth=4
set tabstop=4
set expandtab

set smartindent

syntax on


" map F2 to new tab. F3 to close tab, and F4 to move tab
:map <F2> <Esc>:tabnew<CR>
:imap <F2> <Esc>:tabnew<CR>
:map <F3> <Esc>:tabprev<CR>
:imap <F3> <Esc>:tabprev<CR>
:map <F4> <Esc>:tabnext<CR>
:imap <F4> <Esc>:tabnext<CR>
:map <F5> <Esc>:tabclose<CR>
:imap <F5> <Esc>:tabclose<CR>

" turn on helpful syntax highlighting
syntax on
filetype indent plugin on

" waf wscript files are really python files, so treat them as such.
autocmd BufNewFile,BufRead wscript set filetype=python

" vala file support.
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala

" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1
" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120

" AS3 Support
au BufRead,BufNewFile *.as3     setfiletype actionscript
au BufRead,BufNewFile *.as      setfiletype actionscript

au! BufRead,BufNewFile *.json set filetype=json 

augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=78 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END 
