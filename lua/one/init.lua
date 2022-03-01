local M = {}

--[[ local colors = {
    red = '#E06C75',
    dark_red = '#BE5046',
    green = '#98C379',
    yellow = '#E5C07B',
    dark_yellow = '#D19A66',
    blue = '#61AFEF',
    purple = '#C678DD',
    cyan = '#56B6C2',
    white = '#ABB2BF',
    black = '#282C34',
    foreground = '#ABB2BF',
    background = '#282C34',
    comment_grey = '#5C6370',
    gutter_fg_grey = '#4B5263',
    cursor_grey = '#2C323C',
    visual_grey = '#3E4452',
    menu_grey = '#3E4452',
    special_grey = '#3B4048',
    vertsplit = '#3E4452',
} ]]

local colors = {
    mono_1 = '#abb2bf',
    mono_2 = '#828997',
    mono_3 = '#5c6370',
    mono_4 = '#4b5263',
    hue_1 = '#56b6c2',
    hue_2 = '#61afef',
    hue_3 = '#c678dd',
    hue_4 = '#98c379',
    hue_5 = '#e06c75',
    hue_5_2 = '#be5046',
    hue_6 = '#d19a66',
    hue_6_2 = '#e5c07b',
    syntax_bg = '#24282c',
    syntax_gutter = '#636d83',
    syntax_cursor = '#2c323c',
    syntax_accent = '#528bff',
    vertsplit = '#181a1f',
    special_grey = '#3b4048',
    visual_grey = '#3e4452',
    pmenu = '#2c323c',
    term_black = '#282c34',
    term_blue = '#61afef',
    term_cyan = '#56b6c2',
    term_white = '#dcdfe4',
    term_8 = '#5d677a',
}

local pink = '#d291e4'
local yellow = '#ffcb43'

--[[ local highlights = {

    -- Syntax Groups (descriptions and ordering from `:h w18`)
    {
        hg = 'Comment',
        fg = colors.comment_grey,
        gui = 'italic',
        cterm = 'italic',
    }, -- any comment
    { hg = 'Constant', fg = colors.cyan }, --any constant
    { hg = 'String', fg = colors.green }, --a string constant: "this is a string"
    { hg = 'Character', fg = colors.green }, --a character constant: 'c', '\n'
    { hg = 'Number', fg = colors.dark_yellow }, --a number constant: 234, 0xff
    { hg = 'Boolean', fg = colors.dark_yellow }, --a boolean constant: TRUE, false
    { hg = 'Float', fg = colors.dark_yellow }, --a floating point constant: 2.3e10
    { hg = 'Identifier', fg = colors.red }, --any variable name
    { hg = 'Function', fg = colors.blue }, --function name (also: methods for classes)
    { hg = 'Statement', fg = colors.purple }, --any statement
    { hg = 'Conditional', fg = colors.purple }, --if, then, else, endif, switch, etc.
    { hg = 'Repeat', fg = colors.purple }, --for, do, while, etc.
    { hg = 'Label', fg = colors.purple }, --case, default, etc.
    { hg = 'Operator', fg = colors.purple }, --sizeof", "+", "*", etc.
    { hg = 'Keyword', fg = colors.red }, --any other keyword
    { hg = 'Exception', fg = colors.purple }, --try, catch, throw
    { hg = 'PreProc', fg = colors.yellow }, --generic Preprocessor
    { hg = 'Include', fg = colors.blue }, --preprocessor #include
    { hg = 'Define', fg = colors.purple }, --preprocessor #define
    { hg = 'Macro', fg = colors.purple }, --same as Define
    { hg = 'PreCondit', fg = colors.yellow }, --preprocessor #if, #else, #endif, etc.
    { hg = 'Type', fg = colors.yellow }, --int, long, char, etc.
    { hg = 'StorageClass', fg = colors.yellow }, --static, register, volatile, etc.
    { hg = 'Structure', fg = colors.yellow }, --struct, union, enum, etc.
    { hg = 'Typedef', fg = colors.yellow }, --A typedef
    { hg = 'Special', fg = colors.blue }, --any special symbol
    { hg = 'SpecialChar', fg = colors.dark_yellow }, --special character in a constant
    { hg = 'Tag' }, --you can use CTRL-] on this
    { hg = 'Delimiter' }, --character that needs attention
    { hg = 'SpecialComment', fg = colors.comment_grey }, --special things inside a comment
    { hg = 'Debug' }, --debugging statements
    { hg = 'Underlined', gui = 'underline', cterm = 'underline' }, --text that stands out, HTML links
    { hg = 'Ignore' }, --left blank, hidden
    { hg = 'Error', fg = colors.red }, --any erroneous construct
    { hg = 'Todo', fg = colors.purple }, --anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- Highlighting Groups (descriptions and ordering from ` =h highlight-groups`) {{{
    { hg = 'ColorColumn', bg = colors.cursor_grey }, --used for the columns set with 'colorcolumn'
    { hg = 'Conceal' }, --placeholder characters substituted for concealed text (see 'conceallevel')
    { hg = 'Cursor', fg = colors.black, bg = colors.blue }, --the character under the cursor
    { hg = 'CursorIM' }, --like Cursor, but used when in IME mode
    { hg = 'CursorLine', bg = colors.cursor_grey }, --the screen line that the cursor is in when 'cursorline' is set
    { hg = 'Directory', fg = colors.blue }, --directory names (and other special names in listings)
    { hg = 'DiffAdd', bg = colors.green, fg = colors.black }, --diff mode: Added line
    {
        hg = 'DiffChange',
        fg = colors.yellow,
        gui = 'underline',
        cterm = 'underline',
    }, --diff mode: Changed line
    { hg = 'DiffDelete', bg = colors.red, fg = colors.black }, --diff mode: Deleted line
    { hg = 'DiffText', bg = colors.yellow, fg = colors.black }, --diff mode: Changed text within a changed line
    { hg = 'ErrorMsg', fg = colors.red }, --error messages on the command line
    { hg = 'VertSplit', fg = colors.vertsplit }, --the column separating vertically split windows
    { hg = 'Folded', fg = colors.comment_grey }, --line used for closed folds
    { hg = 'FoldColumn' }, --'foldcolumn'
    { hg = 'SignColumn' }, --column where signs are displayed
    { hg = 'IncSearch', fg = colors.yellow, bg = colors.comment_grey }, --'incsearch' highlighting; also used for the text replaced with ":s///c"
    { hg = 'LineNr', fg = colors.gutter_fg_grey }, --Line number for " =number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    { hg = 'CursorLineNr' }, --Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    {
        hg = 'MatchParen',
        fg = colors.blue,
        gui = 'underline',
        cterm = 'underline',
    }, --The character under the cursor or just before it, if it is a paired bracket, and its match.
    { hg = 'ModeMsg' }, --'showmode' message (e.g., "-- INSERT --")
    { hg = 'MoreMsg' }, --more-prompt
    { hg = 'NonText', fg = colors.special_grey }, --'~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    { hg = 'Normal', fg = colors.foreground, bg = colors.background }, --normal text
    { hg = 'Pmenu', fg = colors.white, bg = colors.menu_grey }, --Popup menu: normal item.
    { hg = 'PmenuSel', fg = colors.cursor_grey, bg = colors.blue }, --Popup menu: selected item.
    { hg = 'PmenuSbar', bg = colors.cursor_grey }, --Popup menu: scrollbar.
    { hg = 'PmenuThumb', bg = colors.white }, --Popup menu: Thumb of the scrollbar.
    { hg = 'Question', fg = colors.purple }, --hit-enter prompt and yes/no questions
    { hg = 'QuickFixLine', fg = colors.black, bg = colors.yellow }, --Current quickfix item in the quickfix window.
    { hg = 'Search', fg = colors.black, bg = colors.yellow }, --Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    { hg = 'SpecialKey', fg = colors.special_grey }, --Meta and special keys listed with " =map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
    {
        hg = 'SpellBad',
        fg = colors.red,
        gui = 'underline',
        cterm = 'underline',
    }, --Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
    { hg = 'SpellCap', fg = colors.dark_yellow }, --Word that should start with a capital. This will be combined with the highlighting used otherwise.
    { hg = 'SpellLocal', fg = colors.dark_yellow }, --Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
    { hg = 'SpellRare', fg = colors.dark_yellow }, --Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
    { hg = 'StatusLine', fg = colors.white, bg = colors.cursor_grey }, --status line of current window
    { hg = 'StatusLineNC', fg = colors.comment_grey }, --status lines of not-current windows Note = if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    { hg = 'StatusLineTerm', fg = colors.white, bg = colors.cursor_grey }, --status line of current :terminal window
    { hg = 'StatusLineTermNC', fg = colors.comment_grey }, --status line of non-current  =terminal window
    { hg = 'TabLine', fg = colors.comment_grey }, --tab pages line, not active tab page label
    { hg = 'TabLineFill' }, --tab pages line, where there are no labels
    { hg = 'TabLineSel', fg = colors.white }, --tab pages line, active tab page label
    { hg = 'Terminal', fg = colors.white, bg = colors.black }, --terminal window (see terminal-size-color)
    { hg = 'Title', fg = colors.green }, --titles for output from " =set all", ":autocmd" etc.
    { hg = 'Visual', bg = colors.visual_grey }, --Visual mode selection
    { hg = 'VisualNOS', bg = colors.visual_grey }, --Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
    { hg = 'WarningMsg', fg = colors.yellow }, --warning messages
    { hg = 'WildMenu', fg = colors.black, bg = colors.blue }, --current match in 'wildmenu' completion

    -- Diagnostics
    { hg = 'DiagnosticError', fg = colors.red },
    { hg = 'DiagnosticWarn', fg = colors.yellow },
    { hg = 'DiagnosticInfo', fg = colors.blue },
    { hg = 'DiagnosticHint', fg = colors.cyan },
    {
        hg = 'DiagnosticUnderlineError',
        fg = colors.red,
        gui = 'underline',
        cterm = 'underline',
    },
    {
        hg = 'DiagnosticUnderlineWarn',
        fg = colors.yellow,
        gui = 'underline',
        cterm = 'underline',
    },
    {
        hg = 'DiagnosticUnderlineInfo',
        fg = colors.blue,
        gui = 'underline',
        cterm = 'underline',
    },
    {
        hg = 'DiagnosticUnderlineHint',
        fg = colors.cyan,
        gui = 'underline',
        cterm = 'underline',
    },

    -- Neovim's built-in language server client
    { hg = 'LspReferenceWrite', fg = colors.blue, gui = 'underline' },
    { hg = 'LspReferenceText', fg = colors.blue, gui = 'underline' },
    { hg = 'LspReferenceRead', fg = colors.blue, gui = 'underline' },
    { hg = 'LspSignatureActiveParameter', fg = colors.yellow, gui = 'bold' },

    -- ... an exception for my favorite plugin
    { hg = 'GitSignsAdd', fg = colors.green },
    { hg = 'GitSignsChange', fg = colors.yellow },
    { hg = 'GitSignsDelete', fg = colors.red },
} ]]
local highlights = {
    -------------------------------------------------------------
    -- Syntax Groups (descriptions and ordering from `:h w18`) --
    -------------------------------------------------------------
    Normal = { fg = colors.mono_1, bg = colors.syntax_bg },
    ColorColumn = { bg = colors.syntax_cursor },
    Conceal = { fg = colors.mono_4, bg = colors.syntax_bg },
    Cursor = { bg = colors.syntax_accent },
    -- CursorIM = NONE,
    CursorColumn = { bg = colors.syntax_cursor },
    CursorLine = { bg = colors.syntax_cursor },
    Directory = { fg = colors.hue_2 },
    ErrorMsg = { fg = colors.hue_5, bg = colors.syntax_bg },
    VertSplit = { fg = colors.syntax_cursor },
    Folded = { fg = colors.mono_3, bg = colors.syntax_bg },
    FoldColumn = { fg = colors.mono_3, bg = colors.syntax_cursor },
    IncSearch = { fg = colors.syntax_bg, bg = colors.hue_2 },
    LineNr = { fg = colors.mono_4 },
    CursorLineNr = { fg = colors.mono_1 },
    MatchParen = {
        fg = colors.hue_5,
        bg = colors.syntax_cursor,
        style = 'underline,bold',
    },
    ModeMsg = { fg = colors.mono_1 },
    MoreMsg = { fg = colors.mono_1 },
    NonText = { fg = colors.mono_3 },
    PMenu = { bg = colors.pmenu },
    PMenuSel = { bg = colors.mono_4 },
    PMenuSbar = { bg = colors.syntax_bg },
    PMenuThumb = { bg = colors.mono_1 },
    Question = { fg = colors.hue_2 },
    Search = { fg = colors.syntax_bg, bg = colors.hue_6_2 },
    SpecialKey = { fg = colors.special_grey },
    Whitespace = { fg = colors.special_grey },
    StatusLine = { fg = colors.mono_1, bg = colors.syntax_cursor },
    StatusLineNC = { fg = colors.mono_3 },
    TabLine = { fg = colors.mono_4 },
    TabLineFill = { fg = colors.mono_4 },
    TabLineSel = { fg = colors.mono_2, style = 'bold' },
    Title = { fg = colors.mono_1, style = 'bold' },
    Visual = { bg = colors.visual_grey },
    VisualNOS = { bg = colors.visual_grey },
    WarningMsg = { fg = colors.hue_5 },
    TooLong = { fg = colors.hue_5 },
    WildMenu = { fg = colors.mono_1, bg = colors.mono_3 },
    SignColumn = { bg = colors.syntax_bg },
    Special = { fg = colors.hue_2 },
    NormalFloat = { fg = colors.mono_1 },
    FloatBorder = { fg = colors.mono_2 },

    ---------------------------
    -- Vim Help Highlighting --
    ---------------------------

    helpCommand = { fg = colors.hue_6_2 },
    helpExample = { fg = colors.hue_6_2 },
    helpHeader = { fg = colors.mono_1, style = 'bold' },
    helpSectionDelim = { fg = colors.mono_3 },

    ----------------------------------
    -- Standard Syntax Highlighting --
    ----------------------------------

    Comment = { fg = colors.mono_3, style = 'italic' },
    Constant = { fg = colors.hue_4 },
    String = { fg = colors.hue_4 },
    Character = { fg = colors.hue_4 },
    Number = { fg = colors.hue_6 },
    Boolean = { fg = colors.hue_6 },
    Float = { fg = colors.hue_6 },
    Identifier = { fg = colors.hue_5 },
    Function = { fg = colors.hue_2 },
    Statement = { fg = colors.hue_3 },
    Conditional = { fg = colors.hue_3 },
    Repeat = { fg = colors.hue_3 },
    Label = { fg = colors.hue_3 },
    Operator = { fg = colors.syntax_accent },
    Keyword = { fg = colors.hue_5 },
    Exception = { fg = colors.hue_3 },
    PreProc = { fg = colors.hue_6_2 },
    Include = { fg = colors.hue_2 },
    Define = { fg = colors.hue_3 },
    Macro = { fg = colors.hue_3 },
    PreCondit = { fg = colors.hue_6_2 },
    Type = { fg = colors.hue_6_2 },
    StorageClass = { fg = colors.hue_6_2 },
    Structure = { fg = colors.hue_6_2 },
    Typedef = { fg = colors.hue_6_2 },
    -- SpecialChar = NONE,
    -- Tag = NONE,
    -- Delimiter = NONE,
    -- Debug = NONE,
    Underlined = { style = 'underline' },
    -- Ignore = NONE,
    Error = { fg = colors.hue_5, bg = colors.syntax_bg, style = 'bold' },
    Todo = { fg = colors.hue_3, bg = colors.syntax_bg },

    -----------------------
    -- Diff Highlighting --
    -----------------------

    GitSignsAdd = { fg = colors.hue_4, colors.syntax_bg },
    GitSignsChange = { fg = colors.hue_6, colors.syntax_bg },
    GitSignsDelete = { fg = colors.hue_5, colors.syntax_bg },
    DiffAdd = { bg = '#2a3429' },
    DiffChange = { bg = '#3a2d27' },
    -- DiffChange  = { bg = '#2a3429'},
    DiffDelete = { fg = '#652f33', bg = '#3f2529' },
    DiffText = { bg = '#5b402e' },
    -- DiffText    = { bg = '#3c5134'},
    DiffAdded = { fg = colors.hue_4, colors.syntax_bg },
    DiffFile = { fg = colors.hue_5, colors.syntax_bg },
    DiffNewFile = { fg = colors.hue_4, colors.syntax_bg },
    DiffLine = { fg = colors.hue_2, colors.syntax_bg },
    DiffRemoved = { fg = colors.hue_5, colors.syntax_bg },

    ---------------------------
    -- Filetype Highlighting --
    ---------------------------

    -- Git and git related plugins
    gitcommitComment = { fg = colors.mono_3 },
    gitcommitUnmerged = { fg = colors.hue_4 },
    -- gitcommitOnBranch = NONE,
    gitcommitBranch = { fg = colors.hue_3 },
    gitcommitDiscardedType = { fg = colors.hue_5 },
    gitcommitSelectedType = { fg = colors.hue_4 },
    -- gitcommitHeader = NONE,
    gitcommitUntrackedFile = { fg = colors.hue_2 },
    gitcommitDiscardedFile = { fg = colors.hue_5 },
    gitcommitSelectedFile = { fg = colors.hue_4 },
    gitcommitUnmergedFile = { fg = colors.hue_6_2 },
    -- gitcommitFile = NONE,
    gitcommitNoBranch = 'gitcommitBranch',
    gitcommitUntracked = 'gitcommitComment',
    gitcommitDiscarded = 'gitcommitComment',
    gitcommitDiscardedArrow = 'gitcommitDiscardedFile',
    gitcommitSelectedArrow = 'gitcommitSelectedFile',
    gitcommitUnmergedArrow = 'gitcommitUnmergedFile',
    diffAdded = { fg = colors.hue_4 },
    diffRemoved = { fg = colors.hue_5 },

    -- Markdown
    markdownUrl = { fg = colors.mono_3 },
    markdownBold = { fg = colors.hue_6, style = 'bold' },
    markdownItalic = { fg = colors.hue_6, style = 'bold' },
    markdownCode = { fg = colors.hue_4 },
    markdownCodeBlock = { fg = colors.hue_5 },
    markdownCodeDelimiter = { fg = colors.hue_4 },
    markdownHeadingDelimiter = { fg = colors.hue_5_2 },
    markdownH1 = { fg = colors.hue_5 },
    markdownH2 = { fg = colors.hue_5 },
    markdownH3 = { fg = colors.hue_5 },
    markdownH4 = { fg = colors.hue_5 },
    markdownH5 = { fg = colors.hue_5 },
    markdownH6 = { fg = colors.hue_5 },
    markdownListMarker = { fg = colors.hue_5 },

    -- Spelling
    SpellBad = { fg = colors.mono_3, style = 'undercurl' },
    SpellLocal = { fg = colors.mono_3, style = 'undercurl' },
    SpellCap = { fg = colors.mono_3, style = 'undercurl' },
    SpellRare = { fg = colors.mono_3, style = 'undercurl' },

    -- Vim
    vimCommand = { fg = colors.hue_3 },
    vimCommentTitle = { fg = colors.mono_3, style = 'bold' },
    vimFunction = { fg = colors.hue_1 },
    vimFuncName = { fg = colors.hue_3 },
    vimHighlight = { fg = colors.hue_2 },
    vimLineComment = { fg = colors.mono_3, style = 'italic' },
    vimParenSep = { fg = colors.mono_2 },
    vimSep = { fg = colors.mono_2 },
    vimUserFunc = { fg = colors.hue_1 },
    vimVar = { fg = colors.hue_5 },

    -- XML
    xmlAttrib = { fg = colors.hue_6_2 },
    xmlEndTag = { fg = colors.hue_5 },
    xmlTag = { fg = colors.hue_5 },
    xmlTagName = { fg = colors.hue_5 },

    -- ZSH
    zshCommands = { fg = colors.mono_1 },
    zshDeref = { fg = colors.hue_5 },
    zshShortDeref = { fg = colors.hue_5 },
    zshFunction = { fg = colors.hue_1 },
    zshKeyword = { fg = colors.hue_3 },
    zshSubst = { fg = colors.hue_5 },
    zshSubstDelim = { fg = colors.mono_3 },
    zshTypes = { fg = colors.hue_3 },
    zshVariableDef = { fg = colors.hue_6 },

    -- Rust
    rustExternCrate = { fg = colors.hue_5, style = 'bold' },
    rustIdentifier = { fg = colors.hue_2 },
    rustDeriveTrait = { fg = colors.hue_4 },
    SpecialComment = { fg = colors.mono_3 },
    rustCommentLine = { fg = colors.mono_3 },
    rustCommentLineDoc = { fg = colors.mono_3 },
    rustCommentLineDocError = { fg = colors.mono_3 },
    rustCommentBlock = { fg = colors.mono_3 },
    rustCommentBlockDoc = { fg = colors.mono_3 },
    rustCommentBlockDocError = { fg = colors.mono_3 },

    -- Man
    manTitle = 'String',
    manFooter = { fg = colors.mono_3 },

    -----------------------------
    --     LSP Highlighting    --
    -----------------------------

    DiagnosticError = { fg = colors.hue_5 },
    DiagnosticWarn = { fg = colors.hue_6_2 },
    DiagnosticInfo = { fg = colors.hue_2 },
    DiagnosticHint = { fg = colors.mono_1 },
    DiagnosticVirtualTextError = { fg = colors.hue_5 },
    DiagnosticVirtualTextWarn = { fg = colors.hue_6_2 },
    DiagnosticVirtualTextInfo = { fg = colors.hue_2 },
    DiagnosticVirtualTextHint = { fg = colors.mono_1 },
    DiagnosticUnderlineError = { sp = colors.hue_5, style = 'undercurl' },
    DiagnosticUnderlineWarn = { sp = colors.hue_6_2, style = 'undercurl' },
    DiagnosticUnderlineInfo = { sp = colors.hue_2, style = 'undercurl' },
    DiagnosticUnderlineHint = { sp = colors.mono_1, style = 'undercurl' },
    DiagnosticFloatingError = { fg = colors.hue_5 },
    DiagnosticFloatingWarn = { fg = colors.hue_6_2 },
    DiagnosticFloatingInfo = { fg = colors.hue_2 },
    DiagnosticFloatingHint = { fg = colors.mono_1 },
    DiagnosticSignError = { fg = colors.hue_5 },
    DiagnosticSignWarn = { fg = colors.hue_6_2 },
    DiagnosticSignInfo = { fg = colors.hue_2 },
    DiagnosticSignHint = { fg = colors.mono_1 },
    -- LspReferenceText                     = { style = 'reverse' },
    -- LspReferenceRead                     = { style = 'reverse' },
    -- LspReferenceWrite                    = { fg = colors.hue_6_2, style = 'reverse' },
    TSDefinition = { bg = colors.syntax_cursor },
    TSDefinitionUsage = { bg = colors.syntax_cursor },

    -----------------------------
    -- TreeSitter Highlighting --
    -- CUSTOM disrupted        --
    -----------------------------

    TSAnnotation = { fg = colors.hue_6_2 },
    TSAttribute = { fg = colors.mono_1 },
    TSBoolean = { fg = colors.hue_6 },
    TSCharacter = { fg = colors.hue_4 },
    TSConditional = { fg = colors.hue_3 },
    TSConstant = { fg = colors.hue_6 },
    TSConstBuiltin = { fg = colors.hue_6 },
    TSConstMacro = { fg = colors.mono_1 },
    TSConstructor = { fg = colors.hue_2 },
    TSEmphasis = { fg = colors.hue_6_2 },
    TSError = { fg = colors.hue_5 },
    TSException = { fg = pink },
    TSField = { fg = colors.hue_5 },
    TSFloat = { fg = colors.hue_4 },
    TSFunction = { fg = colors.hue_2 },
    TSFuncBuiltin = { fg = colors.hue_2 },
    TSFuncMacro = { fg = colors.hue_6_2 },
    TSInclude = { fg = pink },
    TSKeyword = { fg = colors.hue_5 },
    TSKeywordFunction = { fg = pink },
    TSKeywordOperator = { fg = colors.syntax_accent },
    TSLabel = { fg = colors.hue_2 },
    TSLiteral = { fg = colors.hue_6_2 },
    TSMethod = { fg = colors.hue_2 },
    TSNamespace = { fg = pink },
    TSNumber = { fg = colors.hue_6 },
    TSOperator = { fg = colors.syntax_accent },
    TSParameter = { fg = colors.hue_5 },
    TSParameterReference = { fg = colors.mono_1 },
    TSProperty = { fg = colors.hue_5 },
    TSPunctBracket = { fg = colors.hue_2 },
    TSPunctDelimiter = { fg = colors.syntax_accent },
    TSPunctSpecial = { fg = colors.mono_1 },
    TSRepeat = { fg = pink },
    TSString = { fg = colors.hue_4 },
    TSStringEscape = { fg = colors.mono_1 },
    TSStringRegex = { fg = colors.hue_4 },
    TSStrong = { fg = colors.hue_6_2 },
    TSStructure = { fg = colors.hue_6_2 },
    TSTag = { fg = colors.hue_5 },
    TSTagDelimiter = { fg = colors.mono_3 },
    TSText = { fg = colors.hue_6_2 },
    TSTitle = { fg = colors.hue_6_2 },
    TSType = { fg = colors.hue_6_2 },
    TSTypeBuiltin = { fg = colors.hue_2 },
    TSUnderline = { fg = colors.hue_6_2 },
    TSURI = { fg = colors.hue_6_2 },
    TSVariable = { fg = colors.mono_1 },
    TSVariableBuiltin = { fg = colors.hue_6_2 },
    LightBulb = { fg = yellow },

    ---------------
    -- Telescope --
    ---------------
    TelescopeSelection = { fg = colors.hue_2, style = 'bold' }, -- selected item
    TelescopeSelectionCaret = { fg = colors.hue_3 }, -- selection caret
    TelescopeBorder = { fg = colors.mono_2 },
    TelescopePromptBorder = { fg = colors.mono_1 },
    TelescopeMatching = { fg = colors.hue_6 },
    TelescopePromptPrefix = { fg = colors.hue_5 },

    ------------
    -- Neogit --
    ------------

    NeogitDiffContextHighlight = { fg = colors.mono_1, bg = colors.syntax_bg },
    NeogitDiffAddHighlight = { fg = colors.hue_4, bg = '#2a3429' },
    NeogitDiffDeleteHighlight = { fg = colors.hue_5, bg = '#3f2629' },
    NeogitHunkHeader = { fg = colors.mono_3, bg = colors.syntax_bg },
    NeogitHunkHeaderHighlight = {
        fg = colors.mono_2,
        bg = colors.syntax_cursor,
    },

    ------------
    -- Hop --
    ------------

    HopNextKey = { fg = '#ff007c', style = 'bold' },
    HopNextKey1 = { fg = '#00dfff', style = 'bold' },
    HopNextKey2 = { fg = '#2b8db3' },
}

M.colorscheme = function()
    for group, highlight in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, { fg = highlight.fg, bg = highlight.bg })
    end
end

return M
