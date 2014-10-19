set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "mycolor"
hi Normal       guifg=#c0c0c0           guibg=#000040
hi Comment  term=bold       ctermfg=lightgray       guifg=#80a0ff
hi Constant term=underline  ctermfg=lightred        guifg=#ffa0a0
hi Special  term=bold       ctermfg=white   guifg=orange
hi Identifier term=underline    cterm=bold          ctermfg=Cyan guifg=#40ffff
hi Statement term=bold      ctermfg=yellow gui=bold guifg=#aa4444
hi PreProc  term=underline  ctermfg=lightred    guifg=#ff80ff
hi Type term=underline      ctermfg=Green   guifg=#60ff60 gui=bold
hi Function term=bold       ctermfg=cyan guifg=White
hi Repeat   term=underline  ctermfg=yellow      guifg=white
hi Operator             ctermfg=green           guifg=Red
hi Ignore               ctermfg=black       guifg=bg
hi Error    term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
hi Todo term=standout ctermbg=white ctermfg=Black guifg=Blue guibg=Yellow

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String  Constant
hi link Character   Constant
hi link Number  Constant
hi link Boolean Constant
hi link Float       Number
hi link Conditional Repeat
hi link Label       Statement
hi link Keyword Statement
hi link Exception   Statement
hi link Include PreProc
hi link Define  PreProc
hi link Macro       PreProc
hi link PreCondit   PreProc
hi link StorageClass    Type
hi link Structure   Type
hi link Typedef Type
hi link Tag     Special
hi link SpecialChar Special
hi link Delimiter   Special
hi link SpecialComment Special
hi link Debug       Special
