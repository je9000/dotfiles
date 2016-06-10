set nocompatible
syntax on
colors je
set ignorecase
set ts=4
set sw=4
set et
set nocindent
set nosmartindent
set noautoindent
set indentexpr=
set nohlsearch
set backupcopy=yes
set viminfo=
set term=xterm
set nomodeline
set dir=/tmp
set bdir=/tmp
set ruler
set spelllang=en_us
set nospell
set previewheight=4
set noincsearch
map <F1> <Esc>
imap <F1> <Esc>
filetype indent off
"filetype plugin on

" Left here as a note because I keep forgetting how to do this:
" :set spell spelllang=en_us

if exists("+mouse")
    set mouse=a
endif

" Use tab/shift-tab for autocompletion: stolen from http://www.vim.org/tips/tip.php?tip_id=102
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>

if has("gui")
    set guifont=Courier_New:h10
endif

