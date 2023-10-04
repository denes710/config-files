"=============================================================================="
" general vim config
"=============================================================================="
" Always save everything
set autowrite
" Show line number
set number
" Show max text width
set textwidth=120
" Show the max text end
set colorcolumn=120
" Highlight all occurrence of a selected word
set hlsearch
" Raise the cmd
set cmdheight=2
" Always solarized light
set background=light
" TODO! Show characters
" set list
" Controlling the swap file write conditions
set updatecount=200
set updatetime=120000
" Tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 7 lines always visible above and below the cursor
set so=7

set noautoindent
set smartindent
set autoindent
" Use spaces instead of tab
set expandtab
" Tabbing watches for indentation
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
" Spacecount for tab
set tabstop=4
" Always another screen for status
set laststatus=2

"=============================================================================="
" vim-airline
"=============================================================================="
" Enable the list of buffers
let g:airline#extensions#tabline#enabled=1
" Enable displaying buffers with a single tab
let g:airline#extensions#tabline#show_buffers=1
" Show the buffer number
let g:airline#extensions#tabline#buffer_nr_show=1
" No minimum number of buffers
let g:airline#extensions#tabline#buffer_min_count = 0

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = 'Nope dude:('

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇ '

"=============================================================================="
"
"=============================================================================="
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1


" Highlight all occurance of word under cursor
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Update sign column every quarter second
set updatetime=250

" Alias
:command CPB CtrlPBuffer
