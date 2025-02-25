local M = {}

M.get_highlights = function(colors)
    ---@type table<string, vim.api.keyset.highlight>
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
        WinSeparator = { fg = colors.syntax_cursor },
        VertSplit = { link = 'WinSeparator' }, -- deprecated
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
        Pmenu = { bg = colors.pmenu },
        PmenuSel = { bg = colors.mono_4 },
        PmenuKind = { fg = colors.hue_2 },
        PmenuSbar = { bg = colors.syntax_bg },
        PmenuThumb = { bg = colors.mono_1 },
        PmenuExtra = { fg = colors.mono_3 },
        Question = { fg = colors.hue_2 },
        Search = { fg = colors.syntax_bg, bg = colors.hue_6_2 },
        SpecialKey = { fg = colors.special_grey },
        Whitespace = { fg = colors.special_grey },
        StatusLine = { fg = colors.mono_1, bg = colors.syntax_cursor },
        StatusLineNC = { fg = colors.mono_3 },
        TabLine = { fg = colors.mono_4 },
        TabLineFill = { fg = colors.mono_4 },
        TabLineSel = { fg = colors.mono_2, bold = true },
        WinBar = { bg = colors.syntax_bg },
        WinBarNC = { bg = colors.syntax_bg },
        Title = { fg = colors.mono_1, bold = true },
        Visual = { bg = colors.visual_grey },
        VisualNOS = { bg = colors.visual_grey },
        WarningMsg = { fg = colors.hue_5 },
        TooLong = { fg = colors.hue_5 },
        WildMenu = { fg = colors.mono_1, bg = colors.mono_3 },
        SignColumn = { bg = colors.syntax_bg },
        Special = { fg = colors.syntax_accent },
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
        Constant = { fg = colors.hue_6 },
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
        SpecialChar = { link = 'Special' },
        Tag = { link = 'Special' },
        Delimiter = { link = 'Special' },
        Debug = { fg = colors.hue_3 },
        Underlined = { underline = true },
        -- Ignore = NONE,
        Error = { fg = colors.hue_5, bg = colors.syntax_bg, bold = true },
        Todo = { fg = colors.hue_3 },

        ------------
        -- Notify --
        ------------
        NotifyTRACEBorder = { fg = colors.mono_2 },
        NotifyTRACETitle = { link = 'NotifyTRACEBorder' },
        NotifyTRACEIcon = { link = 'NotifyTRACEBorder' },
        -- NotifyTRACEBody = { link = 'NotifyTRACEBorder' },
        NotifyDEBUGBorder = { fg = colors.hue_3 },
        NotifyDEBUGTitle = { link = 'NotifyDEBUGBorder' },
        NotifyDEBUGIcon = { link = 'NotifyDEBUGBorder' },
        -- NotifyDEBUGBody = { link = 'NotifyDEBUGBorder' },
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

        -- SnacksNotifierTrace = { link = 'NotifyTRACEBorder' },
        SnacksNotifierIconTrace = { link = 'NotifyTRACEBorder' },
        SnacksNotifierTitleTrace = { link = 'NotifyTRACEBorder' },
        SnacksNotifierBorderTrace = { link = 'NotifyTRACEBorder' },
        SnacksNotifierFooterTrace = { link = 'NotifyTRACEBorder' },
        -- SnacksNotifierDebug = { link = 'NotifyDEBUGBorder' },
        SnacksNotifierIconDebug = { link = 'NotifyDEBUGBorder' },
        SnacksNotifierTitleDebug = { link = 'NotifyDEBUGBorder' },
        SnacksNotifierBorderDebug = { link = 'NotifyDEBUGBorder' },
        SnacksNotifierFooterDebug = { link = 'NotifyDEBUGBorder' },
        -- SnacksNotifierInfo = { link = 'NotifyINFOBorder' },
        SnacksNotifierIconInfo = { link = 'NotifyINFOBorder' },
        SnacksNotifierTitleInfo = { link = 'NotifyINFOBorder' },
        SnacksNotifierBorderInfo = { link = 'NotifyINFOBorder' },
        SnacksNotifierFooterInfo = { link = 'NotifyINFOBorder' },
        -- SnacksNotifierWarn = { link = 'NotifyWARNBorder' },
        SnacksNotifierIconWarn = { link = 'NotifyWARNBorder' },
        SnacksNotifierTitleWarn = { link = 'NotifyWARNBorder' },
        SnacksNotifierBorderWarn = { link = 'NotifyWARNBorder' },
        SnacksNotifierFooterWarn = { link = 'NotifyWARNBorder' },
        -- SnacksNotifierError = { link = 'NotifyERRORBorder' },
        SnacksNotifierIconError = { link = 'NotifyERRORBorder' },
        SnacksNotifierTitleError = { link = 'NotifyERRORBorder' },
        SnacksNotifierBorderError = { link = 'NotifyERRORBorder' },
        SnacksNotifierFooterError = { link = 'NotifyERRORBorder' },

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

        --------------
        -- Spelling --
        --------------
        SpellBad = { fg = colors.mono_3, undercurl = true },
        SpellLocal = { fg = colors.mono_3, undercurl = true },
        SpellCap = { fg = colors.mono_3, undercurl = true },
        SpellRare = { fg = colors.mono_3, undercurl = true },

        -----------------------------
        --     LSP Highlighting    --
        -----------------------------
        DiagnosticError = { link = '@comment.error' },
        DiagnosticWarn = { link = '@comment.warning' },
        DiagnosticInfo = { link = '@comment.info' },
        DiagnosticHint = { link = '@comment.hint' },
        DiagnosticOk = { fg = colors.hue_4 },
        DiagnosticDeprecated = { strikethrough = true },
        DiagnosticUnnecessary = { link = 'Comment' },
        DiagnosticVirtualTextError = { link = 'DiagnosticError' },
        DiagnosticVirtualTextWarn = { link = 'DiagnosticWarn' },
        DiagnosticVirtualTextInfo = { link = 'DiagnosticInfo' },
        DiagnosticVirtualTextHint = { link = 'DiagnosticHint' },
        DiagnosticVirtualTextOk = { link = 'DiagnosticOk' },
        DiagnosticUnderlineError = { sp = colors.hue_5, undercurl = true },
        DiagnosticUnderlineWarn = { sp = colors.hue_6_2, undercurl = true },
        DiagnosticUnderlineInfo = { sp = colors.hue_2, undercurl = true },
        DiagnosticUnderlineHint = { sp = colors.mono_1, undercurl = true },
        DiagnosticUnderlineOk = { sp = colors.hue_4, underdotted = true },
        DiagnosticFloatingError = { link = 'DiagnosticError' },
        DiagnosticFloatingWarn = { link = 'DiagnosticWarn' },
        DiagnosticFloatingInfo = { link = 'DiagnosticInfo' },
        DiagnosticFloatingHint = { link = 'DiagnosticHint' },
        DiagnosticFloatingOk = { link = 'DiagnosticOk' },
        DiagnosticSignError = { link = 'DiagnosticError' },
        DiagnosticSignWarn = { link = 'DiagnosticWarn' },
        DiagnosticSignInfo = { link = 'DiagnosticInfo' },
        DiagnosticSignHint = { link = 'DiagnosticHint' },
        DiagnosticSignOk = { link = 'DiagnosticOk' },
        LspReferenceText = { bg = colors.special_grey },
        LspReferenceRead = { bg = colors.special_grey },
        LspReferenceWrite = { fg = colors.hue_6_2, reverse = true },
        LspSignatureActiveParameter = { fg = colors.yellow, bold = true },
        LspInlayHint = { fg = colors.mono_3, bg = colors.syntax_cursor },
        SnippetTabstop = { link = 'Visual' },

        -------------------------
        -- TreeSitter Refactor --
        -------------------------
        TSDefinition = { link = 'LspReferenceWrite' },
        TSDefinitionUsage = { link = 'LspReferenceRead' },
        TSCurrentScope = { fg = colors.hue_6_2, reverse = true },

        ------------------------
        -- TreeSitter Context --
        ------------------------
        TreesitterContext = { link = 'CursorLine' },

        -----------------------------
        -- TreeSitter Highlighting --
        -----------------------------
        ['@annotation'] = { fg = colors.hue_6_2 },
        ['@attribute'] = { fg = colors.mono_1 },
        ['@boolean'] = { fg = colors.hue_6 },
        ['@character'] = { fg = colors.hue_4 },
        ['@character.special'] = { link = 'SpecialChar' },
        ['@comment'] = { fg = colors.mono_3, italic = true },
        ['@comment.error'] = { fg = colors.hue_5 },
        ['@comment.warning'] = { fg = colors.hue_6_2 },
        ['@comment.info'] = { fg = colors.hue_2 },
        ['@comment.hint'] = { fg = colors.mono_1 },
        ['@comment.note'] = { fg = colors.hue_2 },
        ['@comment.todo'] = { fg = colors.hue_6_2, italic = true },
        ['@comment.todo.unchecked'] = { fg = colors.hue_5, italic = true },
        ['@comment.todo.checked'] = { fg = colors.hue_4, italic = true },
        ['@constant'] = { fg = colors.hue_6 },
        ['@constant.builtin'] = { link = '@constant' },
        ['@constant.macro'] = { fg = colors.mono_1 },
        ['@constructor'] = { fg = colors.hue_2 },
        ['@diff.plus'] = { link = 'DiffAdd' },
        ['@diff.minus'] = { link = 'DiffDelete' },
        ['@diff.delta'] = { link = 'DiffChange' },
        ['@function'] = { fg = colors.hue_2 },
        ['@function.builtin'] = { fg = colors.hue_2 },
        ['@function.macro'] = { fg = colors.hue_6_2 },
        ['@keyword'] = { fg = colors.hue_3 },
        ['@keyword.function'] = { fg = colors.pink },
        ['@keyword.operator'] = { fg = colors.syntax_accent },
        ['@keyword.return'] = { fg = colors.pink, bold = true },
        ['@keyword.directive'] = { link = 'PreProc' },
        ['@keyword.directive.define'] = { link = 'Define' },
        ['@keyword.storage'] = { link = 'StorageClass' },
        ['@keyword.conditional'] = { fg = colors.hue_3 },
        ['@keyword.debug'] = { link = 'Debug' },
        ['@keyword.exception'] = { fg = colors.pink },
        ['@keyword.import'] = { fg = colors.pink },
        ['@keyword.repeat'] = { fg = colors.syntax_accent },
        ['@label'] = { fg = colors.hue_2 },
        ['@function.method'] = { fg = colors.hue_2 },
        ['@function.method.call'] = { fg = colors.hue_2 },
        ['@module'] = { fg = colors.mono_1, italic = true }, -- aka namespace
        ['@none'] = { fg = colors.mono_1 },
        ['@number'] = { fg = colors.hue_6 },
        ['@number.float'] = { link = '@number' },
        ['@operator'] = { fg = colors.syntax_accent },
        ['@parameter.reference'] = { italic = true },
        ['@property'] = { fg = colors.hue_5 },
        ['@punctuation.delimiter'] = { fg = colors.syntax_accent },
        ['@punctuation.bracket'] = { fg = colors.hue_2 },
        ['@string'] = { fg = colors.hue_4 },
        ['@string.escape'] = { fg = colors.mono_1 },
        ['@string.regexp'] = { fg = colors.hue_4 },
        ['@string.special'] = { fg = colors.hue_6_2 },
        ['@string.special.symbol'] = { fg = colors.hue_6_2 },
        ['@string.special.url'] = { fg = colors.mono_2, underline = true },
        ['@tag'] = { fg = colors.hue_5 },
        ['@tag.delimiter'] = { fg = colors.mono_3 },
        ['@markup'] = { fg = colors.hue_6_2 },
        ['@markup.strong'] = { bold = true },
        ['@markup.italic'] = { italic = true },
        ['@markup.underline'] = { underline = true },
        ['@markup.strikethrough'] = { strikethrough = true },
        ['@markup.heading'] = { fg = colors.hue_6_2, bold = true },
        ['@markup.raw'] = { fg = colors.markup_special },
        ['@markup.math'] = {},
        ['@markup.list'] = { fg = colors.markup_special },
        ['@markup.link'] = {},
        ['@markup.link.url'] = { link = '@string.special.url' },
        ['@markup.link.label'] = { fg = colors.markup_special },
        ['@markup.environment'] = {},
        ['@markup.environment.name'] = {},
        ['@warning'] = { fg = colors.hue_6_2 },
        ['@danger'] = { fg = colors.hue_5 },
        ['@type'] = { fg = colors.hue_6_2 },
        ['@type.definition'] = { fg = colors.hue_6_2 },
        ['@type.builtin'] = { fg = colors.hue_2 },
        ['@variable'] = { fg = colors.mono_1 },
        ['@variable.builtin'] = { fg = colors.hue_6_2 },
        ['@variable.parameter'] = { fg = colors.hue_5 },
        ['@variable.member'] = { fg = colors.hue_5 }, -- aka field

        -------------------------
        -- LSP Semantic Tokens --
        -------------------------
        ['@lsp.type.namespace'] = { link = '@module' },
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
        ['@lsp.type.method'] = { link = '@function.method' },
        ['@lsp.type.macro'] = { link = '@macro' },
        ['@lsp.type.decorator'] = { link = '@function' },
        ['@lsp.type.comment'] = { link = '@comment' },
        ['@lsp.type.keyword'] = { link = '@keyword' },
        ['@lsp.mod.deprecated'] = { link = 'DiagnosticDeprecated' },
        ['@lsp.mod.readonly'] = { link = '@constant' },
        ['@lsp.mod.typeHint'] = { link = '@structure' },
        ['@lsp.typemod.variable.global'] = { link = '@constant' },
        ['@lsp.typemod.variable.static'] = { link = '@constant' },
        ['@lsp.typemod.variable.defaultLibrary'] = {
            link = '@variable.builtin',
        },
        ['@lsp.typemod.function.builtin'] = { link = '@function.builtin' },
        ['@lsp.typemod.function.defaultLibrary'] = {
            link = '@function.builtin',
        },
        ['@lsp.typemod.method.defaultLibrary'] = { link = '@function.builtin' },
        ['@lsp.typemod.operator.injected'] = { link = '@operator' },
        ['@lsp.typemod.string.injected'] = { link = '@string' },
        ['@lsp.typemod.variable.injected'] = { link = '@variable' },

        ['@lsp.type.parameter.python'] = { link = '@parameter.reference' }, -- italic
        ['@lsp.mod.decorator.python'] = { link = '@function' },

        ---------------
        -- Lightbulb --
        ---------------
        LightBulb = { fg = colors.yellow },

        ---------------
        -- Telescope --
        ---------------
        TelescopeSelection = { fg = colors.hue_2, bold = true },
        TelescopeSelectionCaret = { fg = colors.hue_3 },
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
        NeogitDiffContextHighlight = {
            fg = colors.mono_1,
            bg = colors.syntax_bg,
        },
        NeogitDiffAddHighlight = { fg = colors.hue_4, bg = '#2a3429' },
        NeogitDiffDeleteHighlight = { fg = colors.hue_5, bg = '#3f2629' },
        NeogitHunkHeader = { fg = colors.mono_3, bg = colors.syntax_bg },
        NeogitHunkHeaderHighlight = {
            fg = colors.mono_2,
            bg = colors.syntax_cursor,
        },

        -------------
        -- Neotest --
        -------------
        NeotestPassed = { fg = colors.hue_4 },
        NeotestFailed = { fg = colors.hue_5 },
        NeotestRunning = { fg = colors.mono_1 },
        NeotestSkipped = { fg = colors.mono_1 },
        NeotestDir = { fg = colors.mono_1 },
        NeotestFile = { fg = colors.mono_1 },
        -- TODO
        -- NeotestAdapterName = { fg = c.purple, fmt = 'bold' },
        -- NeotestExpandMarker = colors.Grey,
        -- NeotestFocused = { fmt = 'bold,italic' },
        -- NeotestIndent = colors.Grey,
        -- NeotestMarked = { fg = c.orange, fmt = 'bold' },
        -- NeotestNamespace = colors.Blue,
        -- NeotestWinSelect = { fg = c.cyan, fmt = 'bold' },
        -- NeotestTarget = colors.Purple,
        -- NeotestTest = colors.Fg,
        -- NeotestUnknown = colors.LightGrey,

        ---------
        -- DAP --
        ---------
        debugPC = { bg = colors.debug_line }, -- DapStoppedLine

        ------------
        -- DAP UI --
        ------------
        DapUIVariable = { link = 'Normal' },
        DapUIScope = { link = 'Special', bold = true },
        DapUIType = { link = 'Type' },
        DapUIValue = { link = 'Normal' },
        DapUIModifiedValue = { link = 'Special', bold = true },
        DapUIDecoration = { link = 'CursorLineNr' },
        DapUIThread = { link = 'GitSignsAdd' }, --  link = 'Identifier'
        DapUIStoppedThread = { link = 'Special' },
        DapUIFrameName = { link = 'Normal' },
        DapUISource = { link = 'Keyword' },
        DapUILineNumber = { link = 'Normal' },
        DapUIFloatBorder = { link = 'FloatBorder' },
        DapUIWatchesEmpty = { link = 'Comment' },
        DapUIWatchesValue = { link = 'GitSignsAdd' },
        DapUIWatchesError = { link = 'DiagnosticError' },
        DapUIBreakpointsPath = { link = 'Directory' },
        DapUIBreakpointsInfo = { link = 'DiagnosticInfo' },
        DapUIBreakpointsCurrentLine = { link = 'Identifier', bold = true },
        DapUIBreakpointsLine = { link = 'DapUILineNumber' },
        DapUIBreakpointsDisabledLine = { link = 'Comment' },
        DapUICurrentFrameName = { link = 'DapUIBreakpointsCurrentLine' },
        DapUIStepOver = { link = 'Normal' },
        DapUIStepInto = { link = 'Normal' },
        DapUIStepBack = { link = 'Normal' },
        DapUIStepOut = { link = 'Normal' },
        DapUIStop = { link = 'DiagnosticError' },
        DapUIPlayPause = { link = 'GitSignsAdd' },
        DapUIRestart = { link = 'DiagnosticInfo' },
        DapUIUnavailable = { link = 'DiagnosticError' },

        Hidden = { fg = colors.syntax_bg }, -- e.g. first indent line

        -----------
        -- Noice --
        -----------
        NoiceVirtualText = { link = 'NormalFloat' },
        NoiceCmdlinePopupBorder = { link = 'NormalFloat' },

        -------------
        -- NeoTree --
        -------------
        NeoTreeRootName = { bold = true },

        ---------------
        -- blink.cmp --
        ---------------
        BlinkCmpLabel = { fg = colors.mono_1 },
        BlinkCmpLabelDetail = { link = 'PmenuExtra' },
        BlinkCmpLabelDescription = { link = 'PmenuExtra' },
        BlinkCmpLabelDeprecated = { link = 'DiagnosticDeprecated' },
        BlinkCmpSource = { link = 'PmenuExtra' },
        BlinkCmpKindText = { link = '@markup' },
        BlinkCmpKindMethod = { link = '@lsp.type.method' },
        BlinkCmpKindFunction = { link = '@lsp.type.function' },
        BlinkCmpKindConstructor = { link = '@constructor' },
        BlinkCmpKindField = { link = '@variable.member' },
        BlinkCmpKindVariable = { link = '@variable' },
        BlinkCmpKindClass = { link = '@lsp.type.class' },
        BlinkCmpKindInterface = { link = '@lsp.type.interface' },
        BlinkCmpKindModule = { link = '@module' },
        BlinkCmpKindProperty = { link = '@property' },
        BlinkCmpKindUnit = { link = '@number' },
        BlinkCmpKindValue = { link = '@number' },
        BlinkCmpKindEnum = { link = '@lsp.type.enum' },
        BlinkCmpKindKeyword = { link = '@lsp.type.keyword' },
        BlinkCmpKindSnippet = { link = '@markup' },
        BlinkCmpKindColor = { link = '@number' },
        BlinkCmpKindFile = { link = 'Directory' },
        BlinkCmpKindReference = { link = '@parameter.reference' },
        BlinkCmpKindFolder = { link = 'Directory' },
        BlinkCmpKindEnumMember = { link = '@lsp.type.enumMember' },
        BlinkCmpKindConstant = { link = '@constant' },
        BlinkCmpKindStruct = { link = '@lsp.type.struct' },
        BlinkCmpKindEvent = { link = '@constant' },
        BlinkCmpKindOperator = { link = '@operator' },
        BlinkCmpKindTypeParameter = { link = '@lsp.type.parameter' },

        --------------------
        -- matchwith.nvim --
        --------------------
        Matchwith = { bg = colors.syntax_cursor },
        MatchwithOut = { link = 'Matchwith' },
        MatchwithSign = { link = 'SignColumn' },
    }
    return highlights
end

return M
