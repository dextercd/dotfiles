if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Iosvkem] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'micol'

if !has('gui_running') && get(g:, 'Iosvkem_transp_bg', 0)
  hi Normal ctermfg=253 ctermbg=NONE guifg=#dddddd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=253 ctermbg=NONE guifg=#dddddd guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
endif
hi WhiteSpace guifg=#444444
hi ColorColumn ctermfg=NONE ctermbg=234 guifg=NONE guibg=#161819 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CursorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=39 ctermbg=234 guifg=#20bbfc guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=34 ctermbg=234 guifg=#40bb40 guibg=#1c1c1c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=110 ctermbg=234 guifg=#80aacc guibg=#1c1c1c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=167 ctermbg=234 guifg=#cc4040 guibg=#1c1c1c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi FoldColumn ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE,italic gui=NONE,italic
hi IncSearch ctermfg=214 ctermbg=234 guifg=#fcbb20 guibg=#1c1c1c guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi LineNr ctermfg=239 ctermbg=234 guifg=#505050 guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=199 ctermbg=234 guifg=#fc20bb guibg=#1c1c1c guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,standout
hi ModeMsg ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=253 ctermbg=236 guifg=#dddddd guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=199 ctermbg=236 guifg=#fc20bb guibg=#303030 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuThumb ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=39 ctermbg=234 guifg=#20bbfc guibg=#1c1c1c guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi SignColumn ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=199 ctermbg=234 guifg=#fc20bb guibg=#1c1c1c guisp=#d02b61 cterm=NONE gui=NONE
hi SpellCap ctermfg=39 ctermbg=234 guifg=#20bbfc guibg=#1c1c1c guisp=#6c9ef8 cterm=NONE gui=NONE
hi SpellLocal ctermfg=129 ctermbg=234 guifg=#bb20fc guibg=#1c1c1c guisp=#b77fdb cterm=NONE gui=NONE
hi SpellRare ctermfg=49 ctermbg=234 guifg=#20fcbb guibg=#1c1c1c guisp=#00aa80 cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=253 ctermbg=236 guifg=#dddddd guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=239 ctermbg=234 guifg=#505050 guibg=#161819 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=253 ctermbg=236 guifg=#dddddd guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=253 ctermbg=236 guifg=#dddddd guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=253 ctermbg=239 guifg=#dddddd guibg=#505050 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=239 ctermbg=234 guifg=#505050 guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=39 ctermbg=236 guifg=#20bbfc guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=244 ctermbg=NONE guifg=#808080 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=70 ctermbg=NONE guifg=#60aa00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
"hi Error ctermfg=203 ctermbg=234 guifg=#ff2040 guibg=#1c1c1c guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,standout
hi Error ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi Identifier ctermfg=140 ctermbg=NONE guifg=#b77fdb guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=253 ctermbg=NONE guifg=#dddddd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=67 ctermbg=NONE guifg=#5688af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=111 ctermbg=NONE guifg=#6c9ef8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=172 ctermbg=NONE guifg=#d08928 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=49 ctermbg=NONE guifg=#20fcbb guibg=NONE guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,standout
hi Type ctermfg=36 ctermbg=NONE guifg=#00aa80 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=253 ctermbg=NONE guifg=#dddddd guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=fg guifg=NONE guibg=fg guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=253 ctermbg=234 guifg=#dddddd guibg=#1c1c1c guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH1 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH2 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH3 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH4 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH5 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownH6 ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownLinkTextDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownLinkDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownListMarker ctermfg=140 ctermbg=NONE guifg=#b77fdb guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi markdownLinkText ctermfg=111 ctermbg=NONE guifg=#6c9ef8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownUrl ctermfg=239 ctermbg=NONE guifg=#505050 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownBoldDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownItalicDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi markdownBoldItalicDelimiter ctermfg=161 ctermbg=NONE guifg=#d02b61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi rstSections ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi rstEmphasis ctermfg=36 ctermbg=NONE guifg=#00aa80 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi rstStrongEmphasis ctermfg=36 ctermbg=NONE guifg=#00aa80 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
let g:terminal_ansi_colors = [
      \ '#1c1c1c',
      \ '#d01b61',
      \ '#60aa00',
      \ '#d08928',
      \ '#6c9ef8',
      \ '#b77fdb',
      \ '#00aa80',
      \ '#dddddd',
      \ '#808080',
      \ '#d01b61',
      \ '#60aa00',
      \ '#d08928',
      \ '#6c9ef8',
      \ '#b77fdb',
      \ '#00aa80',
      \ '#ffffff'
      \ ]
if get(g:, "Iosvkem_disable_italic", 0)
  hi Comment cterm=NONE
  hi Folded cterm=NONE
  hi rstEmphasis cterm=NONE
endif
finish
