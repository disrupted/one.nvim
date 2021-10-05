vim.g.colors_name = 'one'

local colors = {}

if vim.o.background == 'dark' then
    -- Dark Colors
    colors = {
        mono_1 = { '#abb2bf', 145, 'mono_1' },
        mono_2 = { '#828997', 102, 'mono_2' },
        mono_3 = { '#5c6370', 59, 'mono_3' },
        mono_4 = { '#4b5263', 240, 'mono_4' },
        hue_1 = { '#56b6c2', 247, 'hue_1' }, -- cyan
        hue_2 = { '#61afef', 75, 'hue_2' }, -- blue
        hue_3 = { '#c678dd', 176, 'hue_3' }, -- purple
        hue_4 = { '#98c379', 114, 'hue_4' }, -- green
        hue_5 = { '#e06c75', 168, 'hue_5' }, -- red1
        hue_5_2 = { '#be5046', 131, 'hue_5_2' }, -- red2
        hue_6 = { '#d19a66', 247, 'hue_6' }, -- orange1
        hue_6_2 = { '#e5c07b', 180, 'hue_6_2' }, -- orange2
        syntax_bg = { '#24282c', 17, 'syntax_bg' },
        syntax_gutter = { '#636d83', 243, 'syntax_gutter' },
        syntax_cursor = { '#2c323c', 23, 'syntax_cursor' },
        syntax_accent = { '#528bff', 69, 'syntax_accent' },
        vertsplit = { '#181a1f', 234, 'vertsplit' },
        special_grey = { '#3b4048', 238, 'special_grey' },
        visual_grey = { '#3e4452', 59, 'visual_grey' },
        pmenu = { '#2c323c', 23, 'pmenu' }, -- same as syntax_cursor
        term_black = { '#282c34', 17, 'term_black' },
        term_blue = { '#61afef', 75, 'term_blue' },
        term_cyan = { '#56b6c2', 247, 'term_cyan' },
        term_white = { '#dcdfe4', 188, 'term_white' },
        term_8 = { '#5d677a', 242, 'term_8' },
    }
else
    -- Light Colors
    colors = {
        mono_1 = { '#494b53', 59, 'mono_1' },
        mono_2 = { '#696c77', 60, 'mono_2' },
        mono_3 = { '#a0a1a7', 247, 'mono_3' },
        mono_4 = { '#c2c2c3', 251, 'mono_4' },
        hue_1 = { '#0184bc', 31, 'hue_1' },
        hue_2 = { '#4078f2', 69, 'hue_2' },
        hue_3 = { '#a626a4', 243, 'hue_3' },
        hue_4 = { '#50a14f', 242, 'hue_4' },
        hue_5 = { '#e45649', 244, 'hue_5' },
        hue_5_2 = { '#ca1243', 241, 'hue_5_2' },
        hue_6 = { '#986801', 94, 'hue_6' },
        hue_6_2 = { '#c18401', 242, 'hue_6_2' },
        syntax_bg = { '#fafafa', 231, 'syntax_bg' },
        syntax_gutter = { '#9e9e9e', 247, 'syntax_gutter' },
        syntax_cursor = { '#f0f0f0', 255, 'syntax_cursor' },
        syntax_accent = { '#526fff', 246, 'syntax_accent' },
        vertsplit = { '#e7e9e1', 254, 'vertsplit' },
        special_grey = { '#d3d3d3', 252, 'special_grey' },
        visual_grey = { '#d0d0d0', 252, 'visual_grey' },
        pmenu = { '#dfdfdf', 254, 'pmenu' },
        term_black = { '#383a42', 237, 'term_black' },
        term_blue = { '#0184bc', 31, 'term_blue' },
        term_cyan = { '#0997b3', 243, 'term_cyan' },
        term_white = { '#fafafa', 231, 'term_white' },
        term_8 = { '#4f525e', 240, 'term_8' },
    }
end

-- Common
local pink = { '#d291e4', 251, 'pink' }
local yellow = { '#ffcb43', 1, 'yellow' }

--[[ DO NOT EDIT `BG` NOR `FG`. ]]
local BG = 'bg'
local FG = 'fg'
local NONE = {}

--[[ These are the ones you should edit. ]]
-- This is the only highlight that must be defined separately.
local highlight_group_normal = { fg = colors.mono_1, bg = colors.syntax_bg }

-- This is where the rest of your highlights should go.
local highlight_groups = {
    -------------------------------------------------------------
    -- Syntax Groups (descriptions and ordering from `:h w18`) --
    -------------------------------------------------------------
    Normal = { fg = colors.mono_1, bg = colors.syntax_bg },
    bold = { style = 'bold' },
    ColorColumn = { bg = colors.syntax_cursor },
    Conceal = { fg = colors.mono_4, bg = colors.syntax_bg },
    Cursor = { bg = colors.syntax_accent },
    CursorIM = NONE,
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
    Italic = { style = 'italic' },
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
    SpecialChar = NONE,
    Tag = NONE,
    Delimiter = NONE,
    Debug = NONE,
    Underlined = { style = 'underline' },
    Ignore = NONE,
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
    gitcommitOnBranch = NONE,
    gitcommitBranch = { fg = colors.hue_3 },
    gitcommitDiscardedType = { fg = colors.hue_5 },
    gitcommitSelectedType = { fg = colors.hue_4 },
    gitcommitHeader = NONE,
    gitcommitUntrackedFile = { fg = colors.hue_1 },
    gitcommitDiscardedFile = { fg = colors.hue_5 },
    gitcommitSelectedFile = { fg = colors.hue_4 },
    gitcommitUnmergedFile = { fg = colors.hue_6_2 },
    gitcommitFile = NONE,
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
    DiagnosticInfo = { fg = colors.hue_1 },
    DiagnosticHint = { fg = colors.mono_1 },
    DiagnosticVirtualTextError = { fg = colors.hue_5 },
    DiagnosticVirtualTextWarn = { fg = colors.hue_6_2 },
    DiagnosticVirtualTextInfo = { fg = colors.hue_1 },
    DiagnosticVirtualTextHint = { fg = colors.mono_1 },
    DiagnosticUnderlineError = { sp = colors.hue_5, style = 'undercurl' },
    DiagnosticUnderlineWarn = { sp = colors.hue_6_2, style = 'undercurl' },
    DiagnosticUnderlineInfo = { sp = colors.hue_1, style = 'undercurl' },
    DiagnosticUnderlineHint = { sp = colors.mono_1, style = 'undercurl' },
    DiagnosticFloatingError = { fg = colors.hue_5 },
    DiagnosticFloatingWarn = { fg = colors.hue_6_2 },
    DiagnosticFloatingInfo = { fg = colors.hue_1 },
    DiagnosticFloatingHint = { fg = colors.mono_1 },
    DiagnosticSignError = { fg = colors.hue_5 },
    DiagnosticSignWarn = { fg = colors.hue_6_2 },
    DiagnosticSignInfo = { fg = colors.hue_1 },
    DiagnosticSignHint = { fg = colors.mono_1 },
    -- LspReferenceText                     = { style = 'reverse' },
    -- LspReferenceRead                     = { style = 'reverse' },
    -- LspReferenceWrite                    = { fg = colors.hue_6_2, style = 'reverse' },

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

local terminal_ansi_colors = {
    [0] = colors.term_black,
    [1] = colors.hue_5,
    [2] = colors.hue_4,
    [3] = colors.hue_6_2,
    [4] = colors.term_blue,
    [5] = colors.hue_3,
    [6] = colors.term_cyan,
    [7] = colors.term_white,
    [8] = colors.term_8,
    [9] = colors.hue_5,
    [10] = colors.hue_4,
    [11] = colors.hue_6_2,
    [12] = colors.term_blue,
    [13] = colors.hue_3,
    [14] = colors.term_cyan,
    [15] = colors.term_white,
}

require(vim.g.colors_name)(
    highlight_group_normal,
    highlight_groups,
    terminal_ansi_colors
)
