set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat16"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine 	ctermbg=white
  hi CursorColumn 	ctermbg=white
  hi MatchParen 	ctermfg=white ctermbg=cyan cterm=none
  hi Pmenu 		ctermfg=grey ctermbg=black
  hi PmenuSel 		ctermfg=black ctermbg=yellow
endif

" General colors
hi Cursor 		ctermfg=NONE ctermbg=grey cterm=none
hi Normal 		ctermfg=grey ctermbg=NONE cterm=none
hi NonText 		ctermfg=cyan ctermbg=NONE  cterm=none
hi LineNr 		ctermfg=grey ctermbg=black cterm=none
hi StatusLine 		ctermfg=grey ctermbg=black cterm=none
hi StatusLineNC 	ctermfg=cyan ctermbg=black cterm=none
hi VertSplit 		ctermfg=black ctermbg=black cterm=none
hi Folded 		ctermbg=black ctermfg=blue cterm=none 
hi Title		ctermfg=grey ctermbg=NONE cterm=bold
hi Visual		ctermfg=grey ctermbg=black cterm=none
hi SpecialKey		ctermfg=cyan ctermbg=magenta cterm=none

" Syntax highlighting
hi Comment 		ctermfg=cyan cterm=none
hi Todo 		ctermfg=cyan cterm=none
hi Constant 		ctermfg=red cterm=none
hi String 		ctermfg=green cterm=none
hi Identifier 		ctermfg=yellow cterm=none
hi Function 		ctermfg=yellow cterm=none
hi Type 		ctermfg=yellow cterm=none
hi Statement 		ctermfg=blue cterm=none
hi Keyword		ctermfg=blue cterm=none
hi PreProc 		ctermfg=red cterm=none
hi Number		ctermfg=red cterm=none
hi Special		ctermfg=yellow cterm=none

