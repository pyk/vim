set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "green"

" Basics
hi Normal       ctermfg=green      ctermbg=black
hi ErrorMsg     ctermfg=white      ctermbg=red
hi Visual       ctermfg=lightgrey  ctermbg=darkblue
hi Todo         ctermfg=black      ctermbg=lightgreen
hi NonText      ctermfg=lightgreen
hi Question     ctermfg=lightgreen
hi LineNr       ctermfg=lightgreen
hi Directory    ctermfg=lightgreen
hi Folded       ctermfg=black      ctermbg=darkgreen
hi ColorColumn                     ctermbg=233
hi Error                           ctermbg=brown
hi CursorLine   ctermfg=black      ctermbg=green
hi TabLine      ctermfg=darkgreen  ctermbg=bg

" Splitter
hi StatusLine   ctermfg=black      ctermbg=green      term=none      cterm=none
hi StatusLineNC ctermfg=black      ctermbg=darkgreen  term=none      cterm=none
hi VertSplit    ctermfg=black      ctermbg=darkgreen  term=none      cterm=none

" Popup menu
hi Pmenu        ctermfg=lightgreen ctermbg=darkgreen
hi PmenuSel     ctermfg=darkgreen  ctermbg=lightgreen

" Code colors
hi Comment      ctermfg=darkgreen  ctermbg=bg
hi Constant     ctermfg=lightgreen
hi Special      ctermfg=lightgreen
hi Identifier   ctermfg=green
hi Statement    ctermfg=green
hi PreProc      ctermfg=green
hi Type         ctermfg=lightgreen      
hi Underlined                                         term=underline cterm=underline
hi Ignore                          ctermfg=bg
hi Operator     ctermfg=lightgreen

hi link String         Constant
hi link Character      Constant
hi link Number         Constant
hi link Boolean        Constant
hi link Float          Number
hi link Function       Identifier
hi link Conditional    Statement
hi link Repeat         Statement
hi link Label          Statement
hi link Operator       Statement
hi link Keyword        Statement
hi link Exception      Statement
hi link Include        PreProc
hi link Define         PreProc
hi link Macro          PreProc
hi link PreCondit      PreProc
hi link StorageClass   Type
hi link Structure      Type
hi link Typedef        Type
hi link SpecialChar    Special
hi link Delimiter      Special
hi link SpecialComment Special
hi link Debug          Special
