" Name:		darkbone.vim
" Maintainer:	Kojo Sugita
" Last Change:	2008-11-22
" Revision:	1.1

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'darkbone'

"default colors
hi Normal	ctermfg=248 ctermbg=16
hi NonText	ctermfg=60 ctermbg=233 cterm=none
hi SpecialKey	ctermfg=239
hi Cursor	ctermfg=16 ctermbg=248
hi CursorLine	ctermbg=237
hi CursorColumn	ctermbg=237
hi lCursor	ctermfg=16 ctermbg=248
hi CursorIM	ctermfg=16 ctermbg=248

" Directory
hi Directory	ctermfg=189 ctermbg=16 cterm=bold

" Diff
hi DiffAdd	ctermfg=105 ctermbg=16 cterm=none
hi DiffChange	ctermfg=105 ctermbg=16 cterm=none
hi DiffDelete	ctermfg=105 ctermbg=16 cterm=none
hi DiffText	ctermfg=105 ctermbg=16 cterm=bold

" Message
hi ModeMsg	ctermfg=248 ctermbg=16
hi MoreMsg	ctermfg=248 ctermbg=16
hi ErrorMsg	ctermfg=196 ctermbg=16
hi WarningMsg	ctermfg=196 ctermbg=16

hi VertSplit	ctermfg=60 ctermbg=60

" Folds
hi Folded	ctermfg=248 ctermbg=16
hi FoldColumn	ctermfg=248 ctermbg=233

" Search
hi Search	ctermfg=16 ctermbg=147 cterm=none
hi IncSearch	ctermfg=16 ctermbg=147 cterm=none

hi LineNr	ctermfg=60 ctermbg=16 cterm=none
hi Question	ctermfg=248 ctermbg=16

"\n, \0, %d, %s, etc...
" hi Special	ctermfg=186 ctermbg=16 cterm=none
hi Special	ctermfg=244 ctermbg=16 cterm=none

" status line
hi StatusLine	ctermfg=147 ctermbg=16 cterm=bold,underline
hi StatusLineNC	ctermfg=60 ctermbg=16 cterm=bold,underline
hi WildMenu	ctermfg=16 ctermbg=147

hi Title	ctermfg=147 ctermbg=16 cterm=bold
hi Visual	ctermfg=16 ctermbg=60 cterm=none
hi VisualNOS	ctermfg=248 ctermbg=16

hi Number	ctermfg=186 ctermbg=16
hi Char		ctermfg=186 ctermbg=16
hi String	ctermfg=186 ctermbg=16

hi Boolean	ctermfg=186 ctermbg=16
hi Comment	ctermfg=60
hi Constant 	ctermfg=217 ctermbg=16 cterm=none
hi Identifier	ctermfg=105
hi Statement	ctermfg=105 cterm=none

"Procedure name
hi Function	ctermfg=215

"Define, def
" hi PreProc	ctermfg=217 cterm=none
hi PreProc	ctermfg=189 cterm=none

hi Type		ctermfg=189 cterm=none
hi Underlined	ctermfg=248 cterm=underline
hi Error	ctermfg=196 ctermbg=16
hi Todo		ctermfg=105 ctermbg=16 cterm=none
hi SignColumn   ctermbg=16

" Matches
hi MatchParen	ctermfg=248 ctermbg=60 cterm=none

if version >= 700
  " Pmenu
  hi Pmenu	ctermbg=235
  hi PmenuSel	ctermbg=60 ctermfg=248
  hi PmenuSbar	ctermbg=235

  " Tab
  hi TabLine	  ctermfg=60 ctermbg=16 cterm=underline
  hi TabLineFill  ctermfg=248 ctermbg=16 cterm=none
  hi TabLineSel	  ctermfg=147 ctermbg=60 cterm=bold
endif

" vim:set ts=8 sts=2 sw=2 tw=0:

