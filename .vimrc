set hlsearch
set incsearch
syntax on
set autoindent
set cindent
set smartindent
set smartcase

"" plugins 

" pathogen
execute pathogen#infect()

" powerline fonts
let g:airline_powerline_fonts = 1

" Ag silver searcher
let g:ackprg = 'ag --vimgrep'

" ack to search current word
map <C-f> :Ack! <cword><CR>
map <C-Down> :res +2<CR>
map <C-Up> :res -2<CR>
map <F3> :let @/ = "" <CR>

" taglist toggle
nnoremap <silent> <F6> :TlistToggle<CR>

" open tags in split
map <A-]> :sp <CR>:exec("tag ".expand("<cword>"))<CR>

" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)

let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>' },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ ']': {
\     'pattern':       '[[\]]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ')': {
\     'pattern':       '[()]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }
