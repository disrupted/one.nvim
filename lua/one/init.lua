local M = {}

local colors = {}

if vim.o.background == 'dark' then
    -- dark colors
    colors = {
        mono_1 = '#abb2bf',
        mono_2 = '#828997',
        mono_3 = '#5c6370',
        mono_4 = '#4b5263',
        hue_1 = '#56b6c2',
        hue_2 = '#61afef',
        hue_3 = '#c678dd',
        hue_4 = '#98c379',
        hue_4_2 = '#50a14f',
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
        diff_add = '#2a3429',
        diff_change = '#3a2d27',
        diff_delete = '#3f2529',
        diff_text = '#5b402e',
    }
else
    -- light colors
    colors = {
        mono_1 = '#494b53',
        mono_2 = '#696c77',
        mono_3 = '#a0a1a7',
        mono_4 = '#c2c2c3',
        hue_1 = '#0184bc',
        hue_2 = '#4078f2',
        hue_3 = '#a626a4',
        hue_4 = '#50a14f',
        hue_5 = '#e45649',
        hue_5_2 = '#ca1243',
        hue_6 = '#986801',
        hue_6_2 = '#c18401',
        syntax_bg = '#eaeaea',
        syntax_gutter = '#9e9e9e',
        syntax_cursor = '#f0f0f0',
        syntax_accent = '#526fff',
        vertsplit = '#e7e9e1',
        special_grey = '#d3d3d3',
        visual_grey = '#d0d0d0',
        pmenu = '#dfdfdf',
        term_black = '#383a42',
        term_blue = '#0184bc',
        term_cyan = '#0997b3',
        term_white = '#eaeaea',
        term_8 = '#4f525e',
        diff_add = '#98c379',
        diff_change = '#e5c07b',
        diff_delete = '#e06c75',
        diff_text = '#d19a66',
    }
end

local pink = '#d291e4'
local yellow = '#ffcb43'

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
        bold = true,
        underline = true,
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
    TabLineSel = { fg = colors.mono_2, bold = true },
    Title = { fg = colors.mono_1, bold = true },
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
    helpHeader = { fg = colors.mono_1, bold = true },
    helpSectionDelim = { fg = colors.mono_3 },

    ----------------------------------
    -- Standard Syntax Highlighting --
    ----------------------------------
    Comment = { fg = colors.mono_3, italic = true },
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
    Underlined = { underline = true },
    -- Ignore = NONE,
    Error = { fg = colors.hue_5, bg = colors.syntax_bg, bold = true },
    Todo = { fg = colors.hue_3 },

    ------------
    -- Notify --
    ------------
    NotifyINFOBorder = { fg = colors.hue_4 },
    NotifyINFOTitle = { link = 'NotifyINFOBorder' },
    NotifyINFOIcon = { link = 'NotifyINFOBorder' },
    -- NotifyINFOBody = { link = 'NotifyINFOBorder' },
    NotifyWARNBorder = { fg = colors.hue_6_2 },
    NotifyWARNTitle = { link = 'NotifyWARNBorder' },
    NotifyWARNIcon = { link = 'NotifyWARNBorder' },
    -- NotifyWARNBody = { link = 'NotifyWARNBorder' },
    NotifyERRORBorder = { fg = colors.hue_5 },
    NotifyERRORTitle = { link = 'NotifyERRORBorder' },
    NotifyERRORIcon = { link = 'NotifyERRORBorder' },
    -- NotifyERRORBody = { link = 'NotifyERRORBorder' },
    NotifyTRACEBorder = { fg = colors.mono_1 },
    NotifyTRACETitle = { link = 'NotifyTRACEBorder' },
    NotifyTRACEIcon = { link = 'NotifyTRACEBorder' },
    -- NotifyTRACEBody = { link = 'NotifyTRACEBorder' },

    -----------------------
    -- Diff Highlighting --
    -----------------------
    GitSignsAdd = { fg = colors.hue_4, bg = colors.syntax_bg },
    GitSignsChange = { fg = colors.hue_6, bg = colors.syntax_bg },
    GitSignsDelete = { fg = colors.hue_5, bg = colors.syntax_bg },
    GitSignsStagedAdd = { fg = colors.hue_4_2, bg = colors.syntax_bg },
    GitSignsStagedChange = { fg = colors.hue_6_2, bg = colors.syntax_bg },
    GitSignsStagedDelete = { fg = colors.hue_5_2, bg = colors.syntax_bg },
    DiffAdd = { bg = colors.diff_add },
    DiffChange = { bg = colors.diff_change },
    DiffDelete = { bg = colors.diff_delete },
    DiffText = { bg = colors.diff_text },
    DiffAdded = { fg = colors.hue_4, bg = colors.syntax_bg },
    DiffFile = { fg = colors.hue_5, bg = colors.syntax_bg },
    DiffNewFile = { fg = colors.hue_4, bg = colors.syntax_bg },
    DiffLine = { fg = colors.hue_2, bg = colors.syntax_bg },
    DiffRemoved = { fg = colors.hue_5, bg = colors.syntax_bg },

    -- Spelling
    SpellBad = { fg = colors.mono_3, undercurl = true },
    SpellLocal = { fg = colors.mono_3, undercurl = true },
    SpellCap = { fg = colors.mono_3, undercurl = true },
    SpellRare = { fg = colors.mono_3, undercurl = true },

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
    DiagnosticUnderlineError = { sp = colors.hue_5, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.hue_6_2, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.hue_2, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.mono_1, undercurl = true },
    DiagnosticFloatingError = { fg = colors.hue_5 },
    DiagnosticFloatingWarn = { fg = colors.hue_6_2 },
    DiagnosticFloatingInfo = { fg = colors.hue_2 },
    DiagnosticFloatingHint = { fg = colors.mono_1 },
    DiagnosticSignError = { fg = colors.hue_5 },
    DiagnosticSignWarn = { fg = colors.hue_6_2 },
    DiagnosticSignInfo = { fg = colors.hue_2 },
    DiagnosticSignHint = { fg = colors.mono_1 },
    LspReferenceText = { bg = colors.special_grey },
    LspReferenceRead = { bg = colors.special_grey },
    LspReferenceWrite = { fg = colors.hue_6_2, reverse = true },
    LspSignatureActiveParameter = { fg = yellow, bold = true },

    -------------------------
    -- TreeSitter Refactor --
    -------------------------
    TSDefinition = { link = 'LspReferenceWrite' },
    TSDefinitionUsage = { link = 'LspReferenceRead' },
    TSCurrentScope = { fg = colors.hue_6_2, reverse = true },

    -----------------------------
    -- TreeSitter Highlighting --
    -----------------------------
    ['@annotation'] = { fg = colors.hue_6_2 },
    ['@attribute'] = { fg = colors.mono_1 },
    ['@boolean'] = { fg = colors.hue_6 },
    ['@character'] = { fg = colors.hue_4 },
    ['@comment'] = { fg = colors.mono_3, italic = true },
    ['@conditional'] = { fg = colors.hue_3 },
    ['@constant'] = { fg = colors.hue_6 },
    ['@constant.builtin'] = { fg = colors.hue_6 },
    ['@constant.macro'] = { fg = colors.mono_1 },
    ['@constructor'] = { fg = colors.hue_2 },
    ['@error'] = { fg = colors.hue_5 },
    ['@exception'] = { fg = pink },
    ['@field'] = { fg = colors.hue_5 },
    ['@float'] = { fg = colors.hue_4 },
    ['@function'] = { fg = colors.hue_2 },
    ['@function.builtin'] = { fg = colors.hue_2 },
    ['@function.macro'] = { fg = colors.hue_6_2 },
    ['@include'] = { fg = pink },
    ['@keyword'] = { fg = colors.hue_3 },
    ['@keyword.function'] = { fg = pink },
    ['@keyword.operator'] = { fg = colors.syntax_accent },
    ['@keyword.return'] = { fg = pink, bold = true },
    ['@label'] = { fg = colors.hue_2 },
    ['@method'] = { fg = colors.hue_2 },
    ['@namespace'] = { fg = pink },
    ['@none'] = { fg = colors.mono_1 }, -- new
    ['@number'] = { fg = colors.hue_6 },
    ['@operator'] = { fg = colors.syntax_accent },
    ['@parameter'] = { fg = colors.hue_5 },
    ['@parameter.reference'] = { fg = colors.hue_5, italic = true },
    ['@property'] = { fg = colors.hue_5 },
    ['@punctuation.delimiter'] = { fg = colors.syntax_accent },
    ['@punctuation.bracket'] = { fg = colors.hue_2 },
    ['@punctuation.special'] = { fg = colors.mono_1 },
    ['@repeat'] = { fg = colors.syntax_accent },
    ['@string'] = { fg = colors.hue_4 },
    ['@string.escape'] = { fg = colors.mono_1 },
    ['@string.regex'] = { fg = colors.hue_4 },
    ['@symbol'] = { fg = colors.hue_6_2 }, -- new
    ['@tag'] = { fg = colors.hue_5 },
    ['@tag.delimiter'] = { fg = colors.mono_3 },
    ['@text'] = { fg = colors.hue_6_2 },
    ['@text.strong'] = { fg = colors.hue_6_2 },
    ['@text.emphasis'] = { fg = colors.hue_6_2 },
    ['@text.underline'] = { fg = colors.hue_6_2 },
    ['@text.strike'] = { fg = colors.hue_6_2, strikethrough = true },
    ['@text.title'] = { fg = colors.hue_6_2 },
    ['@text.literal'] = { fg = colors.hue_6_2 },
    ['@text.uri'] = { fg = colors.hue_6_2 },
    ['@text.math'] = { fg = colors.hue_6_2 }, -- new
    ['@text.reference'] = { fg = colors.hue_6_2 }, -- new
    ['@text.environment'] = { fg = colors.hue_6_2 }, -- new
    ['@text.environment.name'] = { fg = colors.hue_6_2 }, -- new
    ['@note'] = { fg = colors.hue_2 }, -- new
    ['@warning'] = { fg = colors.hue_6_2 }, -- new
    ['@danger'] = { fg = colors.hue_5 }, -- new
    ['@type'] = { fg = colors.hue_6_2 },
    ['@type.definition'] = { fg = colors.hue_6_2 },
    ['@type.builtin'] = { fg = colors.hue_2 },
    ['@variable'] = { fg = colors.mono_1 },
    ['@variable.builtin'] = { fg = colors.hue_6_2 },

    -------------------------
    -- LSP Semantic Tokens --
    -------------------------
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.enum'] = { link = '@type' },
    -- ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.interface'] = { link = 'Identifier' },
    ['@lsp.type.struct'] = { link = '@structure' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    -- ['@lsp.type.variable'] = { link = '@variable' },
    ['@lsp.type.variable'] = {}, -- use TreeSitter styles for regular variables
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.enumMember'] = { link = '@constant' },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.method'] = { link = '@method' },
    ['@lsp.type.macro'] = { link = '@macro' },
    ['@lsp.type.decorator'] = { link = '@function' },
    ['@lsp.type.comment'] = { link = '@comment' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ['@lsp.mod.deprecated'] = { strikethrough = true },
    ['@lsp.mod.readonly'] = { link = '@constant' },
    ['@lsp.mod.typeHint'] = { link = '@structure' },
    ['@lsp.typemod.variable.global'] = { link = '@constant' },
    ['@lsp.typemod.variable.static'] = { link = '@constant' },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' },
    ['@lsp.typemod.function.builtin'] = { link = '@function.builtin' },
    ['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.method.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.operator.injected'] = { link = '@operator' },
    ['@lsp.typemod.string.injected'] = { link = '@string' },
    ['@lsp.typemod.variable.injected'] = { link = '@variable' },

    ['@lsp.type.parameter.python'] = { link = '@parameter.reference' }, -- italic
    ['@lsp.mod.decorator.python'] = { link = '@function' },

    ---------------
    -- Lightbulb --
    ---------------
    LightBulb = { fg = yellow },

    ---------------
    -- Telescope --
    ---------------
    TelescopeSelection = { fg = colors.hue_2, bold = true }, -- selected item
    TelescopeSelectionCaret = { fg = colors.hue_3 }, -- selection caret
    TelescopeBorder = { fg = colors.mono_2 },
    TelescopePromptBorder = { fg = colors.mono_1 },
    TelescopeMatching = { fg = colors.hue_6 },
    TelescopePromptPrefix = { fg = colors.hue_5 },

    ------------
    -- Neogit --
    ------------
    NeogitNotificationInfo = { link = 'NotifyINFOBorder' },
    NeogitNotificationWarning = { link = 'NotifyWARNBorder' },
    NeogitNotificationError = { link = 'NotifyERRORBorder' },
    NeogitDiffContextHighlight = { fg = colors.mono_1, bg = colors.syntax_bg },
    NeogitDiffAddHighlight = { fg = colors.hue_4, bg = '#2a3429' },
    NeogitDiffDeleteHighlight = { fg = colors.hue_5, bg = '#3f2629' },
    NeogitHunkHeader = { fg = colors.mono_3, bg = colors.syntax_bg },
    NeogitHunkHeaderHighlight = {
        fg = colors.mono_2,
        bg = colors.syntax_cursor,
    },
}

M.colorscheme = function()
    for group, highlight in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, highlight)
    end
end

M.colors = colors

return M
