" Vim color file
" Dark color scheme
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="je"

" Console Color Scheme
hi Normal       term=NONE cterm=NONE ctermfg=LightGray   ctermbg=NONE
hi NonText      term=NONE cterm=NONE ctermfg=Brown       ctermbg=NONE
hi Function     term=NONE cterm=NONE ctermfg=DarkCyan    ctermbg=NONE
hi Statement    term=BOLD cterm=BOLD ctermfg=DarkCyan    ctermbg=NONE
hi Special      term=NONE cterm=NONE ctermfg=DarkRed     ctermbg=NONE
hi SpecialChar  term=NONE cterm=NONE ctermfg=White       ctermbg=NONE
hi Constant     term=NONE cterm=NONE ctermfg=DarkRed     ctermbg=NONE
hi Comment      term=NONE cterm=NONE ctermfg=DarkGreen   ctermbg=NONE
hi Preproc      term=NONE cterm=NONE ctermfg=DarkYellow  ctermbg=NONE
hi Type         term=NONE cterm=NONE ctermfg=DarkMagenta ctermbg=NONE
hi Identifier   term=NONE cterm=NONE ctermfg=White       ctermbg=NONE
hi StatusLine   term=BOLD cterm=NONE ctermfg=Yellow      ctermbg=DarkBlue
hi StatusLineNC term=NONE cterm=NONE ctermfg=Black       ctermbg=Gray
hi Visual       term=NONE cterm=NONE ctermfg=White       ctermbg=DarkCyan
hi Search       term=NONE cterm=NONE ctermbg=Yellow      ctermfg=DarkBlue
hi VertSplit    term=NONE cterm=NONE ctermfg=Black       ctermbg=Gray
hi Directory    term=NONE cterm=NONE ctermfg=DarkRed     ctermbg=NONE
hi WarningMsg   term=NONE cterm=NONE ctermfg=Red         ctermbg=Yellow
hi Error        term=NONE cterm=NONE ctermfg=DarkRed     ctermbg=Gray
hi Cursor                            ctermfg=Black       ctermbg=Cyan
hi LineNr       term=NONE cterm=NONE ctermfg=DarkGreen   ctermbg=NONE

" GUI Color Scheme
hi Normal       gui=NONE     guifg=#BBBBBB   guibg=Black
hi NonText      gui=NONE     guifg=Yellow    guibg=Black
hi Function     gui=NONE     guifg=#00BBBB   guibg=Black
hi Statement    gui=NONE     guifg=#00BBBB   guibg=Black
hi Special      gui=NONE     guifg=#FF0000   guibg=Black
hi SpecialChar  gui=NONE     guifg=#BBBBBB   guibg=Black
hi Constant     gui=NONE     guifg=#BB0000   guibg=Black
hi Comment      gui=NONE     guifg=#00BB00   guibg=Black
hi Preproc      gui=NONE     guifg=#BBBB00   guibg=Black
hi Type         gui=NONE     guifg=#BB00BB   guibg=Black
hi Identifier   gui=NONE     guifg=#BBBBBB   guibg=Black
hi StatusLine   gui=NONE     guifg=#FFFF00   guibg=Gray
hi StatusLineNC gui=NONE     guifg=Black     guibg=Gray
hi Visual       gui=NONE     guifg=White     guibg=DarkCyan
hi Search       gui=BOLD     guibg=#FFFF00   guifg=Black
hi VertSplit    gui=NONE     guifg=Black     guibg=Gray
hi Directory    gui=NONE     guifg=#BB0000   guibg=Black
hi WarningMsg   gui=STANDOUT guifg=Red       guibg=Black
hi Error        gui=NONE     guifg=#BB0000   guibg=Black
hi Cursor                    guifg=Black     guibg=Green
hi LineNr       gui=NONE     guifg=DarkGreen guibg=Black
hi ModeMsg      gui=NONE     guifg=DarkCyan  guibg=Black
hi Question     gui=NONE     guifg=DarkCyan  guibg=Black 

