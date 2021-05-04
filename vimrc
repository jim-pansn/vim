set number "show line numbers
set tabstop=4 "show tab (/t charachter) as 4 spaces
set shiftwidth=0 "use tabstop-value for indentation width
set expandtab "expand tab to spaces
syntax enable "enable syntax highlighting
filetype plugin indent on "detect filetype and load plugin and indent file accordingly
colorscheme base16-material "set colorscheme
"exit insertmode by pressing k and j
inoremap jk <ESC>
inoremap kj <ESC>
"make comments cursive
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
set colorcolumn=100 "show vertical ruler after 100 characters
set autoread "automatically relaod file if it has changed

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
            \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
set mouse=vin "enable mouse support
set hlsearch "highlight searched terms
