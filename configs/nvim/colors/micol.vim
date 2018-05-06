" inspired by base16-solarflare, minor changes, and using NeoVim's WhiteSpace
" group

set background=dark
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name="micol"

highlight SpecialKey     guifg=#667581
highlight TermCursor     gui=reverse
highlight NonText        gui=bold guifg=#667581
highlight Directory      guifg=#33B5E1
highlight ErrorMsg       guifg=#EF5253 guibg=#18262F
highlight IncSearch      guifg=#222E38 guibg=#E66B2B
highlight Search         guifg=#667581 guibg=#E4B51C
highlight MoreMsg        gui=bold guifg=#7CC844
highlight ModeMsg        gui=bold guifg=#7CC844
highlight LineNr         guifg=#667581 guibg=#222E38
highlight CursorLineNr   gui=bold guifg=#85939E guibg=#222E38
highlight Question       gui=bold guifg=#33B5E1
highlight StatusLine     guifg=#85939E guibg=#586875
highlight StatusLineNC   guifg=#667581 guibg=#222E38
highlight VertSplit      guifg=#586875 guibg=#586875
highlight Title          guifg=#33B5E1
highlight Visual         guibg=#586875
highlight WarningMsg     guifg=#EF5253
highlight WildMenu       guifg=#EF5253 guibg=#E4B51C
highlight Folded         guifg=#667581 guibg=#222E38
highlight FoldColumn     guifg=#52CBB0 guibg=#222E38
highlight DiffAdd        guifg=#7CC844 guibg=#222E38
highlight DiffChange     guifg=#667581 guibg=#222E38
highlight DiffDelete     gui=bold guifg=#EF5253 guibg=#222E38
highlight DiffText       gui=bold guifg=#33B5E1 guibg=#222E38
highlight SignColumn     guifg=#667581 guibg=#222E38
highlight Conceal        guifg=#33B5E1 guibg=#18262F
highlight SpellBad       gui=undercurl guibg=#18262F guisp=#EF5253
highlight SpellCap       gui=undercurl guibg=#18262F guisp=#33B5E1
highlight SpellRare      gui=undercurl guibg=#18262F guisp=#A363D5
highlight SpellLocal     gui=undercurl guibg=#18262F guisp=#52CBB0
highlight Pmenu          guifg=#A6AFB8 guibg=#222E38
highlight PmenuSel       guifg=#222E38 guibg=#A6AFB8
highlight PmenuSbar      guibg=Grey
highlight PmenuThumb     guibg=White
highlight TabLine        guifg=#667581 guibg=#222E38
highlight TabLineSel     guifg=#7CC844 guibg=#222E38
highlight TabLineFill    guifg=#667581 guibg=#222E38
highlight CursorColumn   guibg=#222E38
highlight CursorLine     guibg=#222E38
highlight ColorColumn    guibg=#222E38
highlight QuickFixLine   guibg=#222E38
highlight WhiteSpace guifg=#495256
highlight Cursor         guifg=#18262F guibg=#A6AFB8
highlight lCursor        guifg=bg guibg=fg
highlight Substitute     guifg=#667581 guibg=#E4B51C
highlight MatchParen     guibg=#667581
highlight Normal         guifg=#A6AFB8 guibg=#18262F
highlight Comment        guifg=#667581
highlight Constant       guifg=#E66B2B
highlight Special        guifg=#52CBB0
highlight Identifier     guifg=#EF5253
highlight Statement      gui=bold guifg=#EF5253
highlight PreProc        guifg=#E4B51C
highlight Type           guifg=#E4B51C
highlight Underlined     gui=underline guifg=#EF5253
highlight Ignore         guifg=bg
highlight Error          guifg=#18262F guibg=#EF5253
highlight Todo           guifg=#D73C9A guibg=#222E38
highlight String         guifg=#7CC844
highlight Character      guifg=#EF5253
highlight Number         guifg=#E66B2B
highlight Boolean        guifg=#E66B2B
highlight Float          guifg=#E66B2B
highlight Function       guifg=#33B5E1
highlight Conditional    guifg=#A363D5
highlight Repeat         guifg=#E4B51C
highlight Label          guifg=#E4B51C
highlight Operator       guifg=#E4B51C
highlight Keyword        guifg=#A363D5
highlight Exception      guifg=#EF5253
highlight Include        guifg=#33B5E1
highlight Define         guifg=#A363D5
highlight Macro          guifg=#EF5253
highlight StorageClass   guifg=#109919
highlight Structure      guifg=#A363D5
highlight Typedef        guifg=#E4B51C
highlight Tag            guifg=#E4B51C
highlight SpecialChar    guifg=#D73C9A
highlight Delimiter      guifg=#D73C9A
highlight Debug          guifg=#EF5253
highlight Bold           gui=bold
highlight TooLong        guifg=#EF5253
highlight VisualNOS      guifg=#EF5253
highlight cOperator      guifg=#52CBB0
highlight cPreCondit     guifg=#A363D5
highlight csClass        guifg=#E4B51C
highlight csAttribute    guifg=#E4B51C
highlight csModifier     guifg=#A363D5
highlight csType         guifg=#EF5253
highlight csUnspecifiedStatement guifg=#33B5E1
highlight csContextualStatement guifg=#A363D5
highlight csNewDecleration guifg=#EF5253
highlight cssBraces      guifg=#A6AFB8
highlight cssClassName   guifg=#A363D5
highlight cssColor       guifg=#52CBB0
highlight DiffAdded      guifg=#7CC844 guibg=#18262F
highlight DiffFile       guifg=#EF5253 guibg=#18262F
highlight DiffNewFile    guifg=#7CC844 guibg=#18262F
highlight DiffLine       guifg=#33B5E1 guibg=#18262F
highlight DiffRemoved    guifg=#EF5253 guibg=#18262F
highlight gitcommitOverflow guifg=#EF5253
highlight gitcommitSummary guifg=#7CC844
highlight gitcommitComment guifg=#667581
highlight gitcommitUntracked guifg=#667581
highlight gitcommitDiscarded guifg=#667581
highlight gitcommitSelected guifg=#667581
highlight gitcommitHeader guifg=#A363D5
highlight gitcommitSelectedType guifg=#33B5E1
highlight gitcommitUnmergedType guifg=#33B5E1
highlight gitcommitDiscardedType guifg=#33B5E1
highlight gitcommitBranch gui=bold guifg=#E66B2B
highlight gitcommitUntrackedFile guifg=#E4B51C
highlight gitcommitUnmergedFile gui=bold guifg=#EF5253
highlight gitcommitDiscardedFile gui=bold guifg=#EF5253
highlight gitcommitSelectedFile gui=bold guifg=#7CC844
highlight GitGutterAdd   guifg=#7CC844 guibg=#222E38
highlight GitGutterChange guifg=#33B5E1 guibg=#222E38
highlight GitGutterDelete guifg=#EF5253 guibg=#222E38
highlight GitGutterChangeDelete guifg=#A363D5 guibg=#222E38
highlight htmlBold       guifg=#E4B51C
highlight htmlItalic     guifg=#A363D5
highlight htmlEndTag     guifg=#A6AFB8
highlight htmlTag        guifg=#A6AFB8
highlight javaScript     guifg=#A6AFB8
highlight javaScriptBraces guifg=#A6AFB8
highlight javaScriptNumber guifg=#E66B2B
highlight jsOperator     guifg=#33B5E1
highlight jsStatement    guifg=#A363D5
highlight jsReturn       guifg=#A363D5
highlight jsThis         guifg=#EF5253
highlight jsClassDefinition guifg=#E4B51C
highlight jsFunction     guifg=#A363D5
highlight jsFuncName     guifg=#33B5E1
highlight jsFuncCall     guifg=#33B5E1
highlight jsClassFuncName guifg=#33B5E1
highlight jsClassMethodType guifg=#A363D5
highlight jsRegexpString guifg=#52CBB0
highlight jsGlobalObjects guifg=#E4B51C
highlight jsGlobalNodeObjects guifg=#E4B51C
highlight jsExceptions   guifg=#E4B51C
highlight jsBuiltins     guifg=#E4B51C
highlight mailQuoted1    guifg=#E4B51C
highlight mailQuoted2    guifg=#7CC844
highlight mailQuoted3    guifg=#A363D5
highlight mailQuoted4    guifg=#52CBB0
highlight mailQuoted5    guifg=#33B5E1
highlight mailQuoted6    guifg=#E4B51C
highlight mailURL        guifg=#33B5E1
highlight mailEmail      guifg=#33B5E1
highlight markdownCode   guifg=#7CC844
highlight markdownError  guifg=#A6AFB8 guibg=#18262F
highlight markdownCodeBlock guifg=#7CC844
highlight markdownHeadingDelimiter guifg=#33B5E1
highlight NERDTreeDirSlash guifg=#33B5E1
highlight NERDTreeExecFile guifg=#A6AFB8
highlight phpMemberSelector guifg=#A6AFB8
highlight phpComparison  guifg=#A6AFB8
highlight phpParent      guifg=#A6AFB8
highlight pythonOperator guifg=#A363D5
highlight pythonRepeat   guifg=#A363D5
highlight pythonInclude  guifg=#A363D5
highlight pythonStatement guifg=#A363D5
highlight rubyAttribute  guifg=#33B5E1
highlight rubyConstant   guifg=#E4B51C
highlight rubyInterpolationDelimiter guifg=#D73C9A
highlight rubyRegexp     guifg=#52CBB0
highlight rubySymbol     guifg=#7CC844
highlight rubyStringDelimiter guifg=#7CC844
highlight sassidChar     guifg=#EF5253
highlight sassClassChar  guifg=#E66B2B
highlight sassInclude    guifg=#A363D5
highlight sassMixing     guifg=#A363D5
highlight sassMixinName  guifg=#33B5E1
highlight SignifySignAdd guifg=#7CC844 guibg=#222E38
highlight SignifySignChange guifg=#33B5E1 guibg=#222E38
highlight SignifySignDelete guifg=#EF5253 guibg=#222E38
highlight StartifyBracket guifg=#667581
highlight StartifyFile   guifg=#F5F7FA
highlight StartifyFooter guifg=#667581
highlight StartifyHeader guifg=#7CC844
highlight StartifyNumber guifg=#E66B2B
highlight StartifyPath   guifg=#667581
highlight StartifySection guifg=#A363D5
highlight StartifySelect guifg=#52CBB0
highlight StartifySlash  guifg=#667581
highlight StartifySpecial guifg=#667581

highlight link EndOfBuffer NonText
highlight link PreCondit PreProc
highlight link SpecialComment Special
highlight link nvimAutoEvent vimAutoEvent
highlight link nvimHLGroup vimHLGroup
highlight link nvimMap vimMap
highlight link nvimUnmap vimUnmap
highlight link vimAbb vimCommand
highlight link vimAddress vimMark
highlight link vimAuHighlight vimHighlight
highlight link vimAugroupError vimError
highlight link vimAugroupKey vimCommand
highlight link vimAutoCmd vimCommand
highlight link vimAutoCmdOpt vimOption
highlight link vimAutoEvent Type
highlight link vimAutoSet vimCommand
highlight link vimBehave vimCommand
highlight link vimBehaveError vimError
highlight link vimBehaveModel vimBehave
highlight link vimBracket Delimiter
highlight link vimBufnrWarn vimWarn
highlight link vimCmplxRepeat SpecialChar
highlight link vimCollClassErr vimError
highlight link vimCommand Statement
highlight link vimComment Comment
highlight link vimCommentString vimString
highlight link vimCommentTitle PreProc
highlight link vimCondHL vimCommand
highlight link vimContinue Special
highlight link vimCtrlChar SpecialChar
highlight link vimEchoHL vimCommand
highlight link vimEchoHLNone vimGroup
highlight link vimElseIfErr Error
highlight link vimElseif vimCondHL
highlight link vimEmbedError Normal
highlight link vimEnvvar PreProc
highlight link vimErrSetting vimError
highlight link vimError Error
highlight link vimFBVar vimVar
highlight link vimFTCmd vimCommand
highlight link vimFTError vimError
highlight link vimFTOption vimSynType
highlight link vimFgBgAttrib vimHiAttrib
highlight link vimFold Folded
highlight link vimFunc vimError
highlight link vimFuncKey vimCommand
highlight link vimFuncName Function
highlight link vimFuncSID Special
highlight link vimFuncVar Identifier
highlight link vimFunctionError vimError
highlight link vimGroup Type
highlight link vimGroupAdd vimSynOption
highlight link vimGroupName vimGroup
highlight link vimGroupRem vimSynOption
highlight link vimGroupSpecial Special
highlight link vimHLGroup vimGroup
highlight link vimHLMod PreProc
highlight link vimHiAttrib PreProc
highlight link vimHiAttribList vimError
highlight link vimHiCTerm vimHiTerm
highlight link vimHiClear vimHighlight
highlight link vimHiCtermError vimError
highlight link vimHiCtermFgBg vimHiTerm
highlight link vimHiGroup vimGroupName
highlight link vimHiGui vimHiTerm
highlight link vimHiGuiFgBg vimHiTerm
highlight link vimHiGuiFont vimHiTerm
highlight link vimHiGuiRgb vimNumber
highlight link vimHiKeyError vimError
highlight link vimHiNmbr Number
highlight link vimHiStartStop vimHiTerm
highlight link vimHiTerm Type
highlight link vimHighlight vimCommand
highlight link vimInsert vimString
highlight link vimIskSep Delimiter
highlight link vimKeyCode vimSpecFile
highlight link vimKeyCodeError vimError
highlight link vimKeyword Statement
highlight link vimLet vimCommand
highlight link vimLineComment vimComment
highlight link vimMap vimCommand
highlight link vimMapBang vimCommand
highlight link vimMapMod vimBracket
highlight link vimMapModErr vimError
highlight link vimMapModKey vimFuncSID
highlight link vimMark Number
highlight link vimMarkNumber vimNumber
highlight link vimMenuMod vimMapMod
highlight link vimMenuName PreProc
highlight link vimMenuNameMore vimMenuName
highlight link vimMtchComment vimComment
highlight link vimNorm vimCommand
highlight link vimNotFunc vimCommand
highlight link vimNotPatSep vimString
highlight link vimNotation Special
highlight link vimNumber Number
highlight link vimOper Operator
highlight link vimOperError Error
highlight link vimOption PreProc
highlight link vimParenSep Delimiter
highlight link vimPatSep SpecialChar
highlight link vimPatSepErr vimPatSep
highlight link vimPatSepR vimPatSep
highlight link vimPatSepZ vimPatSep
highlight link vimPatSepZone vimString
highlight link vimPattern Type
highlight link vimPlainMark vimMark
highlight link vimPlainRegister vimRegister
highlight link vimRegister SpecialChar
highlight link vimScriptDelim Comment
highlight link vimSearch vimString
highlight link vimSearchDelim Statement
highlight link vimSep Delimiter
highlight link vimSetMod vimOption
highlight link vimSetSep Statement
highlight link vimSetString vimString
highlight link vimSpecFile Identifier
highlight link vimSpecFileMod vimSpecFile
highlight link vimSpecial Type
highlight link vimStatement Statement
highlight link vimString String
highlight link vimStringCont vimString
highlight link vimSubst vimCommand
highlight link vimSubst1 vimSubst
highlight link vimSubstDelim Delimiter
highlight link vimSubstFlagErr vimError
highlight link vimSubstFlags Special
highlight link vimSubstSubstr SpecialChar
highlight link vimSubstTwoBS vimString
highlight link vimSynCase Type
highlight link vimSynCaseError vimError
highlight link vimSynContains vimSynOption
highlight link vimSynError Error
highlight link vimSynKeyContainedin vimSynContains
highlight link vimSynKeyOpt vimSynOption
highlight link vimSynMtchGrp vimSynOption
highlight link vimSynMtchOpt vimSynOption
highlight link vimSynNextgroup vimSynOption
highlight link vimSynNotPatRange vimSynRegPat
highlight link vimSynOption Special
highlight link vimSynPatRange vimString
highlight link vimSynReg Type
highlight link vimSynRegOpt vimSynOption
highlight link vimSynRegPat vimString
highlight link vimSynType vimSpecial
highlight link vimSyncC Type
highlight link vimSyncError Error
highlight link vimSyncGroup vimGroupName
highlight link vimSyncGroupName vimGroupName
highlight link vimSyncKey Type
highlight link vimSyncNone Type
highlight link vimSyntax vimCommand
highlight link vimTodo Todo
highlight link vimUnmap vimMap
highlight link vimUserAttrb vimSpecial
highlight link vimUserAttrbCmplt vimSpecial
highlight link vimUserAttrbCmpltFunc Special
highlight link vimUserAttrbError Error
highlight link vimUserAttrbKey vimOption
highlight link vimUserCmdError Error
highlight link vimUserCommand vimCommand
highlight link vimUserFunc Normal
highlight link vimVar Identifier
highlight link vimWarn WarningMsg

"" I don't think these matter..
"highlight clear vimCollClass
"highlight clear TermCursorNC
"highlight clear VisualNC
"highlight clear NormalNC
"highlight clear Italic
"highlight clear vimOnlyCommand
"highlight clear vimStdPlugin
"highlight clear vimOnlyOption
"highlight clear vimTermOption
"highlight clear vimOnlyHLGroup
"highlight clear vimGlobal
"highlight clear vimIsCommand
"highlight clear vimExtCmd
"highlight clear vimFilter
"highlight clear vimSet
"highlight clear vimUserCmd
"highlight clear vimCmdSep
"highlight clear vimFiletype
"highlight clear vimAugroup
"highlight clear vimExecute
"highlight clear vimFunction
"highlight clear vimOperParen
"highlight clear vimRegion
"highlight clear vimSynLine
"highlight clear vimEcho
"highlight clear vimIf
"highlight clear vimFuncBody
"highlight clear vimFuncBlank
"highlight clear vimEscapeBrace
"highlight clear vimSetEqual
"highlight clear vimSubstRep
"highlight clear vimSubstRange
"highlight clear vimPatRegion
"highlight clear vimCollection
"highlight clear vimSubstPat
"highlight clear vimSubstRep4
"highlight clear vimMapLhs
"highlight clear vimAutoCmdSpace
"highlight clear vimAutoEventList
"highlight clear vimAutoCmdSfxList
"highlight clear vimMapRhs
"highlight clear vimMapRhsExtend
"highlight clear vimMenuBang
"highlight clear vimMenuPriority
"highlight clear vimMenuMap
"highlight clear vimMenuRhs
"highlight clear vimNormCmds
"highlight clear vimGroupList
"highlight clear vimAuSyntax
"highlight clear vimClusterName
"highlight clear vimIskList
"highlight clear vimSynKeyRegion
"highlight clear vimSynMatchRegion
"highlight clear vimSynMtchCchar
"highlight clear vimSynMtchGroup
"highlight clear vimSynRegion
"highlight clear vimSynPatMod
"highlight clear vimSyncLines
"highlight clear vimSyncMatch
"highlight clear vimSyncLinebreak
"highlight clear vimSyncLinecont
"highlight clear vimSyncRegion
"highlight clear vimHiLink
"highlight clear vimHiKeyList
"highlight clear vimHiBang
"highlight clear vimHiCtermColor
"highlight clear vimHiFontname
"highlight clear vimHiGuiFontname
"highlight clear vimHiTermcap
"highlight clear vimCommentTitleLeader
"highlight clear vimAugroupSyncA
