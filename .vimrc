syntax on
set sw=3

set paste
set mouse=

set tabstop=4
set shiftwidth=4
set expandtab

autocmd FileType make setlocal noexpandtab

" visual block when matching begin/ends of blocks
"
noremap % v%

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"filetype plugin on
"filetype indent on

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" don't highlight search
set nohlsearch

" remove trailing spaces from certain file types when saving. don't jump to last change when doing so.
"autocmd FileType python,c,cpp,py,java,javascript,php autocmd BufWritePre <buffer> %s/\s\+$//e
"autocmd FileType python,c,cpp,py,java,javascript,php autocmd BufWritePre * :mark `|%s/\s\+$//e|normal! ``
autocmd FileType python,c,cpp,py,java,javascript,php,sh autocmd BufWritePre <buffer> :mark `|%s/\s\+$//e|normal! ``

"autocmd FileType python compiler pylint3

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set foldlevelstart=20
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'


set cc=120

" source $VIMRUNTIME/defaults.vim
" set mouse-=a
" set paste
" set tabstop=4
" set shiftwidth=4
" set expandtab

" Remember where we were in the file and open in the same place
if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif

"make vim save and load the folding of the document each time it loads"
"also places the cursor in the last place that it was left."
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

