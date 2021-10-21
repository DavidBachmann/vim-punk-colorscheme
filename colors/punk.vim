" PUNK
" Colorscheme heavily inspired by bluz71/vim-nightfly-guicolors
" License: MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax only when changing colorschemes.
if exists('g:colors_name')
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name='punk'

" Please check that Vim/Neovim is able to run this true-color only theme.
" If running in a terminal make sure termguicolors exists and is set.
if has('nvim')
    if has('nvim-0.4') && len(nvim_list_uis()) > 0 && nvim_list_uis()[0]['ext_termcolors'] && !&termguicolors
        " The nvim_list_uis test indicates terminal Neovim vs GUI Neovim.
        " Note, versions prior to Neovim 0.4 did not set 'ext_termcolors'.
        echomsg 'The termguicolors option must be set'
        finish
    endif
else " Vim
    if !has('gui_running') && !exists('&termguicolors')
        echomsg 'A modern version of Vim with termguicolors is required'
        finish
    elseif !has('gui_running') && !&termguicolors
        echomsg 'The termguicolors option must be set'
        echomsg 'Be aware macOS default Vim is broken, use Homebrew Vim instead'
        finish
    endif
endif

" By default do not color the cursor.
let g:punkCursorColor = get(g:, 'punkCursorColor', 0)

" By default do use italics in GUI versions of Vim.
let g:punkItalics = get(g:, 'punkItalics', 1)

" By default do not use a customized 'NormalFloat' highlight group (for Neovim
" floating windows).
let g:punkNormalFloat = get(g:, 'punkNormalFloat', 0)

" By default use the nightly color palette in the `:terminal`
let g:punkTerminalColors = get(g:, 'punkTerminalColors', 1)

" By default do not use a transparent background in GUI versions of Vim.
let g:punkTransparent = get(g:, 'punkTransparent', 0)

" By default do use undercurls in GUI versions of Vim, including terminal Vim
" with termguicolors set.
let g:punkUndercurls = get(g:, 'punkUndercurls', 1)

" By default do not underline matching parentheses.
let g:punkUnderlineMatchParen = get(g:, 'punkUnderlineMatchParen', 0)

" By default do display vertical split columns.
let g:punkVertSplits = get(g:, 'punkVertSplits', 1)

" Background and foreground
let s:black      = '#0d021f'
let s:white      = '#F8F8F2'

" Variations of blue-grey
let s:black_blue = '#081e2f'
let s:dark_blue  = '#092236'
let s:deep_blue  = '#0e293f'
let s:slate_blue = '#2c3043'
let s:regal_blue = '#1d3b53'
let s:steel_blue = '#4b6479'
let s:grey_blue  = '#525b89'
let s:cadet_blue = '#a1aab8'
let s:ash_blue   = '#acb4c2'
let s:white_blue = '#d6deeb'

" Core theme colors
let s:yellow     = '#FFDE63'
let s:peach      = '#FFCB8B'
let s:orange     = '#FF63A6'
let s:red        = '#FB4934' 
let s:watermelon = '#FF78B1'
let s:violet     = '#FE89FF'
let s:purple     = '#AE81FF'
let s:blue       = '#2ADCFE'
let s:turquoise  = '#BEF2FF'
let s:emerald    = '#41A7FC'

" Extra colors
let s:cyan_blue  = '#296596'

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:punkTerminalColors
    if has('nvim')
        let g:terminal_color_0  = s:regal_blue
        let g:terminal_color_1  = s:red
        let g:terminal_color_2  = s:emerald
        let g:terminal_color_3  = s:yellow
        let g:terminal_color_4  = s:blue
        let g:terminal_color_5  = s:violet
        let g:terminal_color_6  = s:turquoise
        let g:terminal_color_7  = s:white
        let g:terminal_color_8  = s:grey_blue
        let g:terminal_color_9  = s:watermelon
        let g:terminal_color_10 = s:emerald
        let g:terminal_color_11 = s:white
        let g:terminal_color_12 = s:blue
        let g:terminal_color_13 = s:purple
        let g:terminal_color_14 = s:turquoise
        let g:terminal_color_15 = s:white_blue
    else
        let g:terminal_ansi_colors = [
          \ s:regal_blue, s:red, s:emerald, s:yellow,
          \ s:blue, s:violet, s:turquoise, s:white,
          \ s:grey_blue, s:watermelon, s:emerald, s:white,
          \ s:blue, s:purple, s:turquoise, s:white_blue
        \]
    endif
endif

" Background and text
if g:punkTransparent
    exec 'highlight Normal guibg=NONE' . ' guifg=' . s:white
else
    exec 'highlight Normal guibg=' . s:black . ' guifg=' . s:white
endif

" Custom punk highlight groups
exec 'highlight punkReset guifg=fg'
exec 'highlight punkVisual guibg=' . s:cyan_blue
exec 'highlight punkWhite guifg=' . s:white
exec 'highlight punkSlateBlue guifg=' . s:slate_blue
exec 'highlight punkRegalBlue guifg=' . s:regal_blue
exec 'highlight punkSteelBlue guifg=' . s:steel_blue
exec 'highlight punkGreyBlue guifg=' . s:grey_blue
exec 'highlight punkCadetBlue guifg=' . s:cadet_blue
exec 'highlight punkAshBlue guifg=' . s:ash_blue
exec 'highlight punkWhiteBlue guifg=' . s:white_blue
exec 'highlight punkYellow guifg=' . s:yellow
exec 'highlight punkPeach guifg=' . s:peach
exec 'highlight punkOrange guifg=' . s:orange
exec 'highlight punkRed guifg=' . s:red
exec 'highlight punkWatermelon guifg=' . s:watermelon
exec 'highlight punkViolet guifg=' . s:violet
exec 'highlight punkPurple guifg=' . s:purple
exec 'highlight punkBlue guifg=' . s:blue
exec 'highlight punkTurquoise guifg=' . s:turquoise
exec 'highlight punkEmerald guifg=' . s:emerald
exec 'highlight punkWhiteAlert guibg=bg guifg=' . s:white
exec 'highlight punkCadetBlueAlert guibg=bg guifg=' . s:cadet_blue
exec 'highlight punkYellowAlert guibg=bg guifg=' . s:yellow
exec 'highlight punkOrangeAlert guibg=bg guifg=' . s:orange
exec 'highlight punkRedAlert guibg=bg guifg=' . s:red
exec 'highlight punkPurpleAlert guibg=bg guifg=' . s:purple
exec 'highlight punkBlueAlert guibg=bg guifg=' . s:blue
exec 'highlight punkEmeraldAlert guibg=bg guifg=' . s:emerald

" Color of mode text, -- INSERT --
exec 'highlight ModeMsg guifg=' . s:cadet_blue . ' gui=none'

" Comments
if g:punkItalics
    exec 'highlight Comment guifg=' . s:grey_blue . ' gui=italic'
else
    exec 'highlight Comment guifg=' . s:grey_blue
endif

" Functions
highlight! link Function punkBlue

" Strings
highlight! link String punkWhite

" Booleans
highlight! link Boolean punkWatermelon

" Identifiers
highlight! link Identifier punkTurquoise

" Color of titles
exec 'highlight Title guifg=' . s:orange . ' gui=none'

" const, static
highlight! link StorageClass punkOrange

" void, intptr_t
exec 'highlight Type guifg=' . s:emerald . ' gui=none'

" Numbers
highlight! link Constant punkOrange

" Character constants
highlight! link Character punkPurple

" Exceptions
highlight! link Exception punkWatermelon

" ifdef/endif
highlight! link PreProc punkWatermelon

" case in switch statement
highlight! link Label punkTurquoise

" end-of-line '$', end-of-file '~'
exec 'highlight NonText guifg=' . s:steel_blue . ' gui=none'

" sizeof
highlight! link Operator punkWatermelon

" for, while
highlight! link Repeat punkViolet

" Search
exec 'highlight Search guibg=bg guifg=' . s:orange . ' gui=reverse'
exec 'highlight IncSearch guibg=bg guifg=' . s:peach

" '\n' sequences
highlight! link Special punkWatermelon

" if, else
exec 'highlight Statement guifg=' . s:violet . ' gui=none'

" struct, union, enum, typedef
highlight! link Structure punkPurple

" Statusline, splits and tab lines
exec 'highlight StatusLine cterm=none guibg=' . s:slate_blue . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineNC cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
exec 'highlight Tabline cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
exec 'highlight TablineSel cterm=none guibg=' . s:slate_blue . ' guifg=' . s:blue . ' gui=none'
exec 'highlight TablineFill cterm=none guibg=' . s:slate_blue . ' guifg=' . s:slate_blue . ' gui=none'
exec 'highlight StatusLineTerm cterm=none guibg=' . s:slate_blue . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineTermNC cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
if g:punkVertSplits
    exec 'highlight VertSplit cterm=none guibg=' . s:slate_blue . ' guifg=' . s:slate_blue . ' gui=none'
else
    exec 'highlight VertSplit cterm=none guibg=' . s:black . ' guifg=' . s:black . ' gui=none'
end

" Visual selection
highlight! link Visual punkVisual
exec 'highlight VisualNOS guibg=' . s:regal_blue . ' guifg=fg gui=none'
exec 'highlight VisualInDiff guibg=' . s:regal_blue . ' guifg=' . s:white

" Errors, warnings and whitespace-eol
exec 'highlight Error guibg=bg guifg=' . s:red
exec 'highlight ErrorMsg guibg=bg guifg=' . s:red
exec 'highlight WarningMsg guibg=bg guifg=' . s:orange

" Auto-text-completion menu
exec 'highlight Pmenu guibg=' . s:deep_blue . ' guifg=fg'
exec 'highlight PmenuSel guibg=' . s:cyan_blue . ' guifg=fg'
exec 'highlight PmenuSbar guibg=' . s:deep_blue
exec 'highlight PmenuThumb guibg=' . s:steel_blue
exec 'highlight WildMenu guibg=' . s:cyan_blue . ' guifg=fg'

" Spelling errors
if g:punkUndercurls
    exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:red
    exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue
else
    exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:red . ' gui=underline guisp=' . s:red
    exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:blue . ' gui=underline guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:yellow . ' gui=underline guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:blue . ' gui=underline guisp=' . s:blue
endif

" Misc
exec 'highlight Question guifg=' . s:emerald . ' gui=none'
exec 'highlight MoreMsg guifg=' . s:red . ' gui=none'
exec 'highlight LineNr guibg=bg guifg=' . s:steel_blue . ' gui=none'
if g:punkCursorColor
    exec 'highlight Cursor guifg=bg guibg=' . s:blue
else
    exec 'highlight Cursor guifg=bg guibg=' . s:cadet_blue
endif
exec 'highlight lCursor guifg=bg guibg=' . s:cadet_blue
exec 'highlight CursorLineNr cterm=none guibg=' . s:dark_blue . ' guifg=' . s:blue . ' gui=none'
exec 'highlight CursorColumn guibg=' . s:dark_blue
exec 'highlight CursorLine cterm=none guibg=' . s:dark_blue
exec 'highlight Folded guibg=' . s:dark_blue . ' guifg='. s:emerald
exec 'highlight FoldColumn guibg=' . s:slate_blue . ' guifg=' . s:emerald
exec 'highlight SignColumn guibg=bg guifg=' . s:emerald
exec 'highlight Todo guibg=' . s:yellow . ' guifg=' . s:black
exec 'highlight SpecialKey guibg=bg guifg=' . s:blue
if g:punkUnderlineMatchParen
    exec 'highlight MatchParen guibg=bg gui=underline'
else
    highlight! link MatchParen punkVisual
endif
exec 'highlight Ignore guifg=' . s:blue
exec 'highlight Underlined guifg=' . s:emerald . ' gui=none'
exec 'highlight QuickFixLine guibg=' . s:deep_blue
highlight! link Delimiter punkWhite
highlight! link qfFileName punkEmerald

" Color column (after line 80)
exec 'highlight ColorColumn guibg=' . s:black_blue

" Conceal color, as used by indentLine plugin
exec 'highlight Conceal guibg=NONE guifg=' . s:deep_blue

" Neovim only highlight groups
if has('nvim')
    exec 'highlight Whitespace guifg=' . s:deep_blue
    exec 'highlight TermCursor guibg=' . s:cadet_blue . ' guifg=bg gui=none'
    if g:punkNormalFloat
        exec 'highlight NormalFloat guibg=bg guifg=' . s:cadet_blue
    else
        exec 'highlight NormalFloat guibg=' . s:dark_blue . ' guifg=fg'
    endif
    exec 'highlight FloatBorder guibg=bg guifg=' . s:slate_blue

    " Neovim Treesitter
    highlight! link TSAnnotation punkViolet
    highlight! link TSAttribute punkBlue
    highlight! link TSConstant punkTurquoise
    highlight! link TSConstBuiltin punkEmerald
    highlight! link TSConstMacro punkViolet
    highlight! link TSConstructor punkEmerald
    highlight! link TSFuncBuiltin punkBlue
    highlight! link TSFuncMacro punkBlue
    highlight! link TSInclude punkWatermelon
    highlight! link TSKeywordOperator punkViolet
    highlight! link TSNamespace punkPurple
    highlight! link TSParameter punkWhite
    highlight! link TSPunctSpecial punkWatermelon
    highlight! link TSSymbol punkPurple
    highlight! link TSTag punkBlue
    highlight! link TSTagDelimiter punkEmerald
    highlight! link TSVariableBuiltin punkEmerald
    highlight! link bashTSParameter punkTurquoise
    highlight! link cssTSPunctDelimiter punkWatermelon
    highlight! link cssTSType punkBlue
    highlight! link scssTSPunctDelimiter punkWatermelon
    highlight! link scssTSType punkBlue
    highlight! link yamlTSField punkBlue
    highlight! link yamlTSPunctDelimiter punkWatermelon
endif

" C/C++
highlight! link cDefine punkViolet
highlight! link cPreCondit punkViolet
highlight! link cStatement punkViolet
highlight! link cStructure punkOrange
highlight! link cppAccess punkEmerald
highlight! link cppCast punkTurquoise
highlight! link cppCustomClass punkTurquoise
highlight! link cppExceptions punkEmerald
highlight! link cppModifier punkViolet
highlight! link cppOperator punkEmerald
highlight! link cppSTLconstant punkPurple
highlight! link cppSTLnamespace punkPurple
highlight! link cppStatement punkTurquoise
highlight! link cppStructure punkViolet

" C#
highlight! link csModifier punkEmerald
highlight! link csPrecondit punkViolet
highlight! link csStorage punkViolet
highlight! link csXmlTag punkBlue

" Clojure
highlight! link clojureDefine punkViolet
highlight! link clojureKeyword punkTurquoise
highlight! link clojureMacro punkOrange
highlight! link clojureParen punkBlue
highlight! link clojureSpecial punkViolet

" CoffeeScript
highlight! link coffeeConstant punkOrange
highlight! link coffeeGlobal punkWatermelon
highlight! link coffeeKeyword punkOrange
highlight! link coffeeObject punkEmerald
highlight! link coffeeObjAssign punkBlue
highlight! link coffeeSpecialIdent punkTurquoise
highlight! link coffeeSpecialVar punkBlue
highlight! link coffeeStatement punkOrange

" Crystal
highlight! link crystalAccess punkYellow
highlight! link crystalAttribute punkBlue
highlight! link crystalBlockParameter punkEmerald
highlight! link crystalClass punkViolet
highlight! link crystalDefine punkViolet
highlight! link crystalExceptional punkOrange
highlight! link crystalInstanceVariable punkTurquoise
highlight! link crystalModule punkBlue
highlight! link crystalPseudoVariable punkEmerald
highlight! link crystalSharpBang punkCadetBlue
highlight! link crystalStringDelimiter punkWhite
highlight! link crystalSymbol punkPurple

" CSS/SCSS
highlight! link cssAtRule punkViolet
highlight! link cssAttr punkTurquoise
highlight! link cssBraces punkReset
highlight! link cssClassName punkEmerald
highlight! link cssClassNameDot punkViolet
highlight! link cssColor punkTurquoise
highlight! link cssIdentifier punkBlue
highlight! link cssProp punkTurquoise
highlight! link cssTagName punkBlue
highlight! link cssUnitDecorators punkWhite
highlight! link cssValueLength punkPurple
highlight! link cssValueNumber punkPurple
highlight! link sassId punkBlue
highlight! link sassIdChar punkViolet
highlight! link sassMedia punkViolet
highlight! link scssSelectorName punkBlue

" Dart
highlight! link dartMetadata punkEmerald
highlight! link dartStorageClass punkViolet
highlight! link dartTypedef punkViolet

" Elixir
highlight! link eelixirDelimiter punkWatermelon
highlight! link elixirAtom punkPurple
highlight! link elixirBlockDefinition punkViolet
highlight! link elixirDefine punkViolet
highlight! link elixirDocTest punkCadetBlue
highlight! link elixirExUnitAssert punkEmerald
highlight! link elixirExUnitMacro punkBlue
highlight! link elixirKernelFunction punkEmerald
highlight! link elixirKeyword punkOrange
highlight! link elixirModuleDefine punkBlue
highlight! link elixirPrivateDefine punkViolet
highlight! link elixirStringDelimiter punkWhite
highlight! link elixirVariable punkTurquoise

" Elm
highlight! link elmLetBlockDefinition punkEmerald
highlight! link elmTopLevelDecl punkOrange
highlight! link elmType punkBlue

" Go
highlight! link goBuiltins punkBlue
highlight! link goConditional punkViolet
highlight! link goDeclType punkEmerald
highlight! link goDirective punkWatermelon
highlight! link goFloats punkOrange
highlight! link goFunction punkBlue
highlight! link goFunctionCall punkBlue
highlight! link goImport punkWatermelon
highlight! link goLabel punkYellow
highlight! link goMethod punkBlue
highlight! link goMethodCall punkBlue
highlight! link goPackage punkViolet
highlight! link goSignedInts punkEmerald
highlight! link goStruct punkOrange
highlight! link goStructDef punkOrange
highlight! link goUnsignedInts punkOrange

" Haskell
highlight! link haskellDecl punkOrange
highlight! link haskellDeclKeyword punkOrange
highlight! link haskellIdentifier punkTurquoise
highlight! link haskellLet punkBlue
highlight! link haskellOperators punkWatermelon
highlight! link haskellType punkBlue
highlight! link haskellWhere punkViolet

" HTML
highlight! link htmlArg punkTurquoise
highlight! link htmlLink punkEmerald
highlight! link htmlEndTag punkPurple
highlight! link htmlH1 punkWatermelon
highlight! link htmlH2 punkOrange
highlight! link htmlTag punkEmerald
highlight! link htmlTagN punkBlue
highlight! link htmlTagName punkBlue
highlight! link htmlUnderline punkWhite
if g:punkItalics
    exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:orange . ' gui=italic'
    exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:orange . ' gui=italic'
    exec 'highlight htmlItalic guifg=' . s:cadet_blue . ' gui=italic'
    exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:cadet_blue . ' gui=italic'
else
    exec 'highlight htmlBoldItalic guibg=' . s:black . ' guifg=' . s:orange
    exec 'highlight htmlBoldUnderlineItalic guibg=' . s:black . ' guifg=' . s:orange
    exec 'highlight htmlItalic guifg=' . s:cadet_blue ' gui=none'
    exec 'highlight htmlUnderlineItalic guibg=' . s:black . ' guifg=' . s:cadet_blue
endif

" Java
highlight! link javaAnnotation punkEmerald
highlight! link javaBraces punkWhite
highlight! link javaClassDecl punkPeach
highlight! link javaCommentTitle punkCadetBlue
highlight! link javaConstant punkBlue
highlight! link javaDebug punkBlue
highlight! link javaMethodDecl punkYellow
highlight! link javaOperator punkWatermelon
highlight! link javaScopeDecl punkViolet
highlight! link javaStatement punkTurquoise

" JavaScript, 'pangloss/vim-javascript' plugin
highlight! link jsClassDefinition punkEmerald
highlight! link jsClassKeyword punkViolet
highlight! link jsClassMethodType punkEmerald
highlight! link jsExceptions punkEmerald
highlight! link jsFrom punkOrange
highlight! link jsFuncBlock punkTurquoise
highlight! link jsFuncCall punkBlue
highlight! link jsFunction punkViolet
highlight! link jsGlobalObjects punkEmerald
highlight! link jsModuleAs punkOrange
highlight! link jsObjectKey punkBlue
highlight! link jsObjectValue punkEmerald
highlight! link jsOperator punkViolet
highlight! link jsStorageClass punkEmerald
highlight! link jsTemplateBraces punkWatermelon
highlight! link jsTemplateExpression punkTurquoise
highlight! link jsThis punkTurquoise

" JSX, 'MaxMEllon/vim-jsx-pretty' plugin
highlight! link jsxAttrib punkEmerald
highlight! link jsxClosePunct punkPurple
highlight! link jsxComponentName punkBlue
highlight! link jsxOpenPunct punkEmerald
highlight! link jsxTagName punkBlue

" Lua
highlight! link luaBraces punkWatermelon
highlight! link luaBuiltin punkEmerald
highlight! link luaFuncCall punkBlue
highlight! link luaSpecialTable punkBlue

" Markdown, 'tpope/vim-markdown' plugin
highlight! link markdownBold punkPeach
highlight! link markdownCode punkWhite
highlight! link markdownCodeDelimiter punkWhite
highlight! link markdownError NormalNC
highlight! link markdownH1 punkOrange
highlight! link markdownHeadingRule punkBlue
highlight! link markdownItalic punkViolet
highlight! link markdownUrl punkPurple

" Markdown, 'plasticboy/vim-markdown' plugin
highlight! link mkdDelimiter punkWhite
highlight! link mkdLineBreak NormalNC
highlight! link mkdListItem punkBlue
highlight! link mkdURL punkPurple

" PHP
highlight! link phpClass punkEmerald
highlight! link phpClasses punkPurple
highlight! link phpFunction punkBlue
highlight! link phpParent punkReset
highlight! link phpType punkViolet

" PureScript
highlight! link purescriptClass punkPeach
highlight! link purescriptModuleParams punkOrange

" Python
highlight! link pythonBuiltin punkBlue
highlight! link pythonClassVar punkEmerald
highlight! link pythonCoding punkBlue
highlight! link pythonImport punkWatermelon
highlight! link pythonOperator punkViolet
highlight! link pythonRun punkBlue
highlight! link pythonStatement punkViolet

" Ruby
highlight! link erubyDelimiter punkWatermelon
highlight! link rubyAccess punkYellow
highlight! link rubyAssertion punkBlue
highlight! link rubyAttribute punkBlue
highlight! link rubyBlockParameter punkEmerald
highlight! link rubyCallback punkBlue
highlight! link rubyClassName punkEmerald
highlight! link rubyDefine punkViolet
highlight! link rubyEntities punkBlue
highlight! link rubyExceptional punkOrange
highlight! link rubyGemfileMethod punkBlue
highlight! link rubyInstanceVariable punkTurquoise
highlight! link rubyInterpolationDelimiter punkWatermelon
highlight! link rubyMacro punkBlue
highlight! link rubyModule punkBlue
highlight! link rubyModuleName punkEmerald
highlight! link rubyPseudoVariable punkEmerald
highlight! link rubyResponse punkBlue
highlight! link rubyRoute punkBlue
highlight! link rubySharpBang punkCadetBlue
highlight! link rubyStringDelimiter punkWhite
highlight! link rubySymbol punkPurple

" Rust
highlight! link rustAssert punkEmerald
highlight! link rustAttribute punkReset
highlight! link rustCharacterInvalid punkWatermelon
highlight! link rustCharacterInvalidUnicode punkWatermelon
highlight! link rustCommentBlockDoc punkCadetBlue
highlight! link rustCommentBlockDocError punkCadetBlue
highlight! link rustCommentLineDoc punkCadetBlue
highlight! link rustCommentLineDocError punkCadetBlue
highlight! link rustConstant punkOrange
highlight! link rustDerive punkEmerald
highlight! link rustEscapeError punkWatermelon
highlight! link rustFuncName punkBlue
highlight! link rustIdentifier punkBlue
highlight! link rustInvalidBareKeyword punkWatermelon
highlight! link rustKeyword punkViolet
highlight! link rustLifetime punkViolet
highlight! link rustMacro punkEmerald
highlight! link rustMacroVariable punkViolet
highlight! link rustModPath punkPurple
highlight! link rustObsoleteExternMod punkWatermelon
highlight! link rustObsoleteStorage punkWatermelon
highlight! link rustReservedKeyword punkWatermelon
highlight! link rustSelf punkTurquoise
highlight! link rustSigil punkTurquoise
highlight! link rustStorage punkViolet
highlight! link rustStructure punkViolet
highlight! link rustTrait punkEmerald
highlight! link rustType punkEmerald

" Scala (note, link highlighting does not work, I don't know why)
exec 'highlight scalaCapitalWord guifg=' . s:blue
exec 'highlight scalaCommentCodeBlock guifg=' . s:cadet_blue
exec 'highlight scalaInstanceDeclaration guifg=' . s:turquoise
exec 'highlight scalaKeywordModifier guifg=' . s:emerald
exec 'highlight scalaSpecial guifg=' . s:watermelon

" Shell scripts
highlight! link shAlias punkTurquoise
highlight! link shCommandSub punkReset
highlight! link shLoop punkViolet
highlight! link shSetList punkTurquoise
highlight! link shShellVariables punkEmerald
highlight! link shVariable punkTurquoise

" TypeScript (leafgarland/typescript-vim)
highlight! link typescriptDOMObjects punkBlue
highlight! link typescriptFuncComma punkWhite
highlight! link typescriptFuncKeyword punkEmerald
highlight! link typescriptGlobalObjects punkBlue
highlight! link typescriptIdentifier punkEmerald
highlight! link typescriptNull punkEmerald
highlight! link typescriptOpSymbols punkViolet
highlight! link typescriptOperator punkWatermelon
highlight! link typescriptParens punkWhite
highlight! link typescriptReserved punkViolet
highlight! link typescriptStorageClass punkEmerald

" TypeScript (HerringtonDarkholme/yats.vim)
highlight! link typeScriptModule punkBlue
highlight! link typescriptAbstract punkOrange
highlight! link typescriptArrayMethod punkBlue
highlight! link typescriptArrowFuncArg punkWhite
highlight! link typescriptBOM punkEmerald
highlight! link typescriptBOMHistoryMethod punkBlue
highlight! link typescriptBOMLocationMethod punkBlue
highlight! link typescriptBOMWindowProp punkEmerald
highlight! link typescriptBraces punkWhite
highlight! link typescriptCall punkWhite
highlight! link typescriptClassHeritage punkPeach
highlight! link typescriptClassKeyword punkViolet
highlight! link typescriptClassName punkEmerald
highlight! link typescriptDecorator punkEmerald
highlight! link typescriptDOMDocMethod punkBlue
highlight! link typescriptDOMEventTargetMethod punkBlue
highlight! link typescriptDOMNodeMethod punkBlue
highlight! link typescriptExceptions punkWatermelon
highlight! link typescriptFuncType punkWhite
highlight! link typescriptMathStaticMethod punkBlue
highlight! link typescriptMethodAccessor punkViolet
highlight! link typescriptObjectLabel punkBlue
highlight! link typescriptParamImpl punkWhite
highlight! link typescriptStringMethod punkBlue
highlight! link typescriptTry punkWatermelon
highlight! link typescriptVariable punkEmerald
highlight! link typescriptXHRMethod punkBlue

" Vimscript
highlight! link vimBracket punkBlue
highlight! link vimCommand punkViolet
highlight! link vimCommentTitle punkViolet
highlight! link vimEnvvar punkWatermelon
highlight! link vimFuncName punkBlue
highlight! link vimFuncSID punkBlue
highlight! link vimFunction punkBlue
highlight! link vimHighlight punkBlue
highlight! link vimNotFunc punkViolet
highlight! link vimNotation punkBlue
highlight! link vimOption punkTurquoise
highlight! link vimParenSep punkWhite
highlight! link vimSep punkWhite
highlight! link vimUserFunc punkBlue

" XML
highlight! link xmlAttrib punkEmerald
highlight! link xmlEndTag punkBlue
highlight! link xmlTag punkEmerald
highlight! link xmlTagName punkBlue

" Git commits
highlight! link gitCommitBranch punkBlue
highlight! link gitCommitDiscardedFile punkWatermelon
highlight! link gitCommitDiscardedType punkBlue
highlight! link gitCommitHeader punkPurple
highlight! link gitCommitSelectedFile punkEmerald
highlight! link gitCommitSelectedType punkBlue
highlight! link gitCommitUntrackedFile punkWatermelon
highlight! link gitEmail punkBlue

" Git commit diffs
highlight! link diffAdded punkEmerald
highlight! link diffChanged punkWatermelon
highlight! link diffIndexLine punkWatermelon
highlight! link diffLine punkBlue
highlight! link diffRemoved punkRed
highlight! link diffSubname punkBlue

" Tagbar plugin
highlight! link TagbarFoldIcon punkCadetBlue
highlight! link TagbarVisibilityPublic punkEmerald
highlight! link TagbarVisibilityProtected punkEmerald
highlight! link TagbarVisibilityPrivate punkEmerald
highlight! link TagbarKind punkEmerald

" NERDTree plugin
highlight! link NERDTreeClosable punkEmerald
highlight! link NERDTreeCWD punkPurple
highlight! link NERDTreeDir punkBlue
highlight! link NERDTreeDirSlash punkWatermelon
highlight! link NERDTreeExecFile punkWhite
highlight! link NERDTreeFile punkWhite
highlight! link NERDTreeFlags punkPurple
highlight! link NERDTreeHelp punkCadetBlue
highlight! link NERDTreeLinkDir punkBlue
highlight! link NERDTreeLinkFile punkBlue
highlight! link NERDTreeLinkTarget punkTurquoise
highlight! link NERDTreeOpenable punkEmerald
highlight! link NERDTreePart punkRegalBlue
highlight! link NERDTreePartFile punkRegalBlue
highlight! link NERDTreeUp punkBlue

" NERDTree Git plugin
highlight! link NERDTreeGitStatusDirDirty punkWhite
highlight! link NERDTreeGitStatusModified punkWatermelon
highlight! link NERDTreeGitStatusRenamed punkBlue
highlight! link NERDTreeGitStatusStaged punkBlue
highlight! link NERDTreeGitStatusUntracked punkRed

" fern.vim plugin
highlight! link FernBranchSymbol punkEmerald
highlight! link FernBranchText punkBlue
highlight! link FernMarkedLine punkYellow
highlight! link FernMarkedText punkWatermelon
highlight! link FernRootSymbol punkPurple
highlight! link FernRootText punkPurple

" fern-git-status.vim plugin
highlight! link FernGitStatusBracket punkGreyBlue
highlight! link FernGitStatusIndex punkEmerald
highlight! link FernGitStatusWorktree punkWatermelon

" Misc languages and plugins
highlight! link bufExplorerHelp punkCadetBlue
highlight! link bufExplorerSortBy punkCadetBlue
highlight! link CleverFDefaultLabel punkWatermelon
highlight! link CtrlPMatch punkOrange
highlight! link Directory punkBlue
highlight! link HighlightedyankRegion punkRegalBlue
highlight! link jsonKeyword punkBlue
highlight! link jsonBoolean punkTurquoise
highlight! link jsonQuote punkWhite
highlight! link netrwClassify punkWatermelon
highlight! link netrwDir punkBlue
highlight! link netrwExe punkWhite
highlight! link tagName punkTurquoise
highlight! link Cheat40Header punkBlue
highlight! link yamlBlockMappingKey punkBlue
highlight! link yamlFlowMappingKey punkBlue
if g:punkUnderlineMatchParen
    exec 'highlight MatchWord gui=underline guisp=' . s:orange	
else
    highlight! link highlight punkOrange
endif
exec 'highlight snipLeadingSpaces guibg=bg guifg=fg'
exec 'highlight MatchWordCur guibg=bg'

" vimdiff/nvim -d
exec 'highlight DiffAdd guibg=' . s:emerald . ' guifg=' . s:black
exec 'highlight DiffChange guibg=' . s:slate_blue
exec 'highlight DiffDelete guibg=' . s:slate_blue . ' guifg=' . s:watermelon ' gui=none'
exec 'highlight DiffText guibg=' . s:blue . ' guifg=' . s:black . ' gui=none'

" ALE plugin
exec 'highlight ALEError guibg=NONE'
exec 'highlight ALEWarning guibg=NONE'
exec 'highlight ALEInfo guibg=NONE'
highlight! link ALEVirtualTextError punkSteelBlue
highlight! link ALEErrorSign punkRedAlert
highlight! link ALEVirtualTextWarning punkSteelBlue
highlight! link ALEWarningSign punkYellowAlert
highlight! link ALEVirtualTextInfo punkSteelBlue
highlight! link ALEInfoSign punkBlueAlert

" GitGutter plugin
highlight! link GitGutterAdd punkEmeraldAlert
highlight! link GitGutterChange punkYellowAlert
highlight! link GitGutterChangeDelete punkOrangeAlert
highlight! link GitGutterDelete punkRedAlert

" Signify plugin
highlight! link SignifySignAdd punkEmeraldAlert
highlight! link SignifySignChange punkYellowAlert
highlight! link SignifySignDelete punkRedAlert

" FZF plugin
exec 'highlight fzf1 guifg=' . s:watermelon . ' guibg=' . s:slate_blue
exec 'highlight fzf2 guifg=' . s:blue . ' guibg=' . s:slate_blue
exec 'highlight fzf3 guifg=' . s:emerald . ' guibg=' . s:slate_blue
exec 'highlight fzfNormal guifg=' . s:ash_blue
exec 'highlight fzfFgPlus guifg=' . s:white_blue
exec 'highlight fzfBorder guifg=' . s:slate_blue
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'fzfBorder'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

" moonfly-statusline plugin
exec 'highlight User1 guibg=' . s:blue       . ' guifg=' . s:dark_blue
exec 'highlight User2 guibg=' . s:white      . ' guifg=' . s:dark_blue
exec 'highlight User3 guibg=' . s:purple     . ' guifg=' . s:dark_blue
exec 'highlight User4 guibg=' . s:watermelon . ' guifg=' . s:dark_blue
exec 'highlight User5 guibg=' . s:slate_blue . ' guifg=' . s:blue       . ' gui=none'
exec 'highlight User6 guibg=' . s:slate_blue . ' guifg=' . s:watermelon . ' gui=none'
exec 'highlight User7 guibg=' . s:slate_blue . ' guifg=' . s:blue       . ' gui=none'

" Coc plugin
highlight! link CocUnusedHighlight punkWhite

" Neovim diagnostics
if has('nvim-0.6')
    " Neovim 0.6 diagnostic
    highlight! link DiagnosticError punkRed
    highlight! link DiagnosticWarn punkYellow
    highlight! link DiagnosticInfo punkBlue
    highlight! link DiagnosticHint punkWhite
    if g:punkUndercurls
        exec 'highlight DiagnosticUnderlineError guibg=NONE gui=undercurl guisp=' . s:red
        exec 'highlight DiagnosticUnderlineWarn guibg=NONE gui=undercurl guisp=' . s:yellow
        exec 'highlight DiagnosticUnderlineInfo guibg=NONE gui=undercurl guisp=' . s:blue
        exec 'highlight DiagnosticUnderlineHint guibg=NONE gui=undercurl guisp=' . s:white
    else
        exec 'highlight DiagnosticUnderlineError guibg=NONE gui=underline guisp=' . s:red
        exec 'highlight DiagnosticUnderlineWarn guibg=NONE gui=underline guisp=' . s:yellow
        exec 'highlight DiagnosticUnderlineInfo guibg=NONE gui=underline guisp=' . s:blue
        exec 'highlight DiagnosticUnderlineHint guibg=NONE gui=underline guisp=' . s:white
    endif
    highlight! link DiagnosticVirtualTextError punkSteelBlue
    highlight! link DiagnosticVirtualTextWarn punkSteelBlue
    highlight! link DiagnosticVirtualTextInfo punkSteelBlue
    highlight! link DiagnosticVirtualTextHint punkSteelBlue
    highlight! link DiagnosticSignError punkRedAlert
    highlight! link DiagnosticSignWarn punkYellowAlert
    highlight! link DiagnosticSignInfo punkBlueAlert
    highlight! link DiagnosticSignHint punkWhiteAlert
    highlight! link DiagnosticFloatingError punkRed
    highlight! link DiagnosticFloatingWarn punkYellow
    highlight! link DiagnosticFloatingInfo punkBlue
    highlight! link DiagnosticFloatingHint punkWhite
    highlight! link LspSignatureActiveParameter punkRegalBlue
elseif has('nvim-0.5')
    " Neovim 0.5 LSP diagnostics
    if g:punkUndercurls
        exec 'highlight LspDiagnosticsUnderlineError guibg=NONE gui=undercurl guisp=' . s:red
        exec 'highlight LspDiagnosticsUnderlineWarning guibg=NONE gui=undercurl guisp=' . s:yellow
        exec 'highlight LspDiagnosticsUnderlineInformation guibg=NONE gui=undercurl guisp=' . s:blue
        exec 'highlight LspDiagnosticsUnderlineHint guibg=NONE gui=undercurl guisp=' . s:white
    else
        exec 'highlight LspDiagnosticsUnderlineError guibg=NONE gui=underline guisp=' . s:red
        exec 'highlight LspDiagnosticsUnderlineWarning guibg=NONE gui=underline guisp=' . s:yellow
        exec 'highlight LspDiagnosticsUnderlineInformation guibg=NONE gui=underline guisp=' . s:blue
        exec 'highlight LspDiagnosticsUnderlineHint guibg=NONE gui=underline guisp=' . s:white
    endif
    highlight! link LspDiagnosticsVirtualTextError punkSteelBlue
    highlight! link LspDiagnosticsVirtualTextWarning punkSteelBlue
    highlight! link LspDiagnosticsVirtualTextInformation punkSteelBlue
    highlight! link LspDiagnosticsVirtualTextHint punkSteelBlue
    highlight! link LspDiagnosticsSignError punkRedAlert
    highlight! link LspDiagnosticsSignWarning punkYellowAlert
    highlight! link LspDiagnosticsSignInformation punkBlueAlert
    highlight! link LspDiagnosticsSignHint punkWhiteAlert
    highlight! link LspDiagnosticsFloatingError punkRed
    highlight! link LspDiagnosticsFloatingWarning punkYellow
    highlight! link LspDiagnosticsFloatingInformation punkBlue
    highlight! link LspDiagnosticsFloatingHint punkWhite
    highlight! link LspSignatureActiveParameter punkRegalBlue
endif

" Neovim only plugins
if has('nvim')
    " NvimTree plugin
    highlight! link NvimTreeFolderIcon punkBlue
    highlight! link NvimTreeFolderName punkBlue
    highlight! link NvimTreeIndentMarker punkSlateBlue
    highlight! link NvimTreeOpenedFolderName punkBlue
    highlight! link NvimTreeRootFolder punkPurple
    highlight! link NvimTreeSpecialFile punkYellow
    highlight! link NvimTreeWindowPicker DiffChange
    exec 'highlight NvimTreeExecFile guifg=' . s:emerald . ' gui=none'
    exec 'highlight NvimTreeImageFile guifg=' . s:violet . ' gui=none'
    exec 'highlight NvimTreeOpenedFile guifg=' . s:yellow . ' gui=none'
    exec 'highlight NvimTreeSymlink guifg=' . s:turquoise . ' gui=none'

    " Telescope plugin
    highlight! link TelescopeBorder punkSlateBlue
    highlight! link TelescopeMatching punkOrange
    highlight! link TelescopeMultiSelection punkWatermelon
    highlight! link TelescopeNormal punkAshBlue
    highlight! link TelescopePreviewDate punkGreyBlue
    highlight! link TelescopePreviewGroup punkGreyBlue
    highlight! link TelescopePreviewLink punkTurquoise
    highlight! link TelescopePreviewMatch punkVisual
    highlight! link TelescopePreviewRead punkOrange
    highlight! link TelescopePreviewSize punkEmerald
    highlight! link TelescopePreviewUser punkGreyBlue
    highlight! link TelescopePromptPrefix punkBlue
    highlight! link TelescopeResultsDiffAdd punkEmerald
    highlight! link TelescopeResultsDiffChange punkRed
    highlight! link TelescopeResultsSpecialComment punkSteelBlue
    highlight! link TelescopeSelectionCaret punkWatermelon
    exec 'highlight TelescopeSelection guibg=' . s:regal_blue . ' guifg=' . s:white_blue

    " gitsigns.nvim plugin
    highlight! link GitSignsAdd punkEmeraldAlert
    highlight! link GitSignsChange punkYellowAlert
    highlight! link GitSignsChangeNr punkYellowAlert
    highlight! link GitSignsChangeLn punkYellowAlert
    highlight! link GitSignsChangeDelete punkOrangeAlert
    highlight! link GitSignsDelete punkRedAlert

    " Hop plugin
    highlight! link HopNextKey punkYellow
    highlight! link HopNextKey1 punkBlue
    highlight! link HopNextKey2 punkWatermelon
    highlight! link HopUnmatched punkGreyBlue

    " Barbar plugin
    exec 'highlight BufferCurrent      guibg=' . s:black . '  guifg=' . s:white
    exec 'highlight BufferCurrentIndex guibg=' . s:dark_blue . '  guifg=' . s:white
    exec 'highlight BufferCurrentMod   guibg=' . s:dark_blue . '  guifg=' . s:purple
    exec 'highlight BufferCurrentSign  guibg=' . s:dark_blue . '  guifg=' . s:blue
    exec 'highlight BufferVisible      guibg=' . s:dark_blue . '  guifg=' . s:grey_blue
    exec 'highlight BufferVisibleIndex guibg=' . s:dark_blue . '  guifg=' . s:grey_blue
    exec 'highlight BufferVisibleMod   guibg=' . s:dark_blue . '  guifg=' . s:purple
    exec 'highlight BufferVisibleSign  guibg=' . s:black . '  guifg=' . s:grey_blue
    exec 'highlight BufferInactive     guibg=' . s:slate_blue . ' guifg=' . s:grey_blue
    exec 'highlight BufferInactiveMod  guibg=' . s:slate_blue . ' guifg=' . s:purple
    exec 'highlight BufferInactiveSign guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue

    " nvim-cmp plugin
    highlight! link CmpItemAbbrMatch punkWhiteBlue
    highlight! link CmpItemAbbrMatchFuzzy punkOrange
    highlight! link CmpItemKind punkBlue
    highlight! link CmpItemMenu punkCadetBlue
endif

set background=dark
