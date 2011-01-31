" set the background to dark, so that text shows up properly.
set background=dark

" turn on the ruler.
set ruler

" set shifts and tabs to the same value and turn all tabs to spaces.
set shiftwidth=4
set tabstop=4
set expandtab


" map F2 to new tab. F3 to close tab, and F4 to move tab
:map <F2> <Esc>:tabnew<CR>
:imap <F2> <Esc>:tabnew<CR>
:map <F3> <Esc>:tabclose<CR>
:imap <F3> <Esc>:tabclose<CR>
:map <F4> <Esc>:tabmove<CR>
:imap <F4> <Esc>:tabmove<CR>

" turn on helpful syntax highlighting
syntax on
filetype indent plugin on

" waf wscript files are really python files, so treat them as such.
autocmd BufNewFile,BufRead wscript set filetype=python

