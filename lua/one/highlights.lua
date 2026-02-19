local M = {}

M.get_highlights = function(colors)
    ---@type table<string, vim.api.keyset.highlight>
    local highlights = {
        -------------------
        -- Syntax Groups --
        -------------------
        Normal = { fg = colors.mono_1, bg = colors.syntax_bg },
        ColorColumn = { bg = colors.syntax_cursor },
        Conceal = { fg = colors.mono_4 },
        Cursor = { bg = colors.syntax_accent },
        -- CursorIM = NONE,
        CursorColumn = { bg = colors.syntax_cursor },
        CursorLine = { bg = colors.syntax_cursor },
        Directory = { fg = colors.hue_2 },
        ErrorMsg = { fg = colors.hue_5 },
        WinSeparator = { fg = colors.syntax_cursor },
        Folded = { fg = colors.mono_3 },
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
        PmenuSbar = {},
        PmenuThumb = { bg = colors.mono_1 },
        PmenuExtra = { fg = colors.mono_3 },
        Question = { fg = colors.hue_2 },
        Search = { fg = colors.syntax_bg, bg = colors.hue_6 },
        SpecialKey = { fg = colors.special_grey },
        Whitespace = { fg = colors.special_grey },
        StatusLine = { fg = colors.mono_1, bg = colors.syntax_cursor },
        StatusLineNC = { fg = colors.mono_3 },
        TabLine = { fg = colors.mono_4 },
        TabLineFill = { fg = colors.mono_4 },
        TabLineSel = { fg = colors.mono_2, bold = true },
        WinBar = {},
        WinBarNC = {},
        Title = { fg = colors.mono_1, bold = true },
        Visual = { bg = colors.visual_grey },
        VisualNOS = { bg = colors.visual_grey },
        WarningMsg = { fg = colors.hue_5 },
        TooLong = { fg = colors.hue_5 },
        WildMenu = { fg = colors.mono_1, bg = colors.mono_3 },
        SignColumn = {},
        Special = { fg = colors.syntax_accent },
        NormalFloat = { fg = colors.mono_1 },
        FloatBorder = { fg = colors.mono_3 },
        QuickFixLine = { bg = colors.syntax_cursor },

        ---------------------------
        -- Vim Help Highlighting --
        ---------------------------
        helpCommand = { fg = colors.hue_6 },
        helpExample = { fg = colors.hue_6 },
        helpHeader = { fg = colors.mono_1, bold = true },
        helpSectionDelim = { fg = colors.mono_3 },

        ----------------------------------
        -- Standard Syntax Highlighting --
        ----------------------------------
        Comment = { fg = colors.mono_3, italic = true },
        Constant = { fg = colors.hue_6_2 },
        String = { fg = colors.hue_4 },
        Identifier = { fg = colors.hue_5 },
        Function = { fg = colors.hue_2 },
        Statement = { fg = colors.hue_3 },
        Operator = { fg = colors.syntax_accent },
        Keyword = { fg = colors.hue_5 },
        PreProc = { fg = colors.hue_6 },
        Include = { fg = colors.hue_2 },
        Define = { fg = colors.hue_3 },
        Macro = { fg = colors.hue_3 },

        Type = { fg = colors.hue_6 },

        SpecialChar = { link = 'Special' },
        Tag = { link = 'Special' },
        Delimiter = { link = 'Special' },
        Debug = { fg = colors.hue_3 },
        Underlined = { underline = true },
        -- Ignore = NONE,
        Error = { fg = colors.hue_5, bold = true },
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
        NotifyWARNBorder = { fg = colors.hue_6 },
        NotifyWARNTitle = { link = 'NotifyWARNBorder' },
        NotifyWARNIcon = { link = 'NotifyWARNBorder' },
        -- NotifyWARNBody = { link = 'NotifyWARNBorder' },
        NotifyERRORBorder = { fg = colors.hue_5 },
        NotifyERRORTitle = { link = 'NotifyERRORBorder' },
        NotifyERRORIcon = { link = 'NotifyERRORBorder' },
        -- NotifyERRORBody = { link = 'NotifyERRORBorder' },

        -----------------
        -- snacks.nvim --
        -----------------
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
        GitSignsAdd = { fg = colors.hue_4 },
        GitSignsChange = { fg = colors.hue_6 },
        GitSignsDelete = { fg = colors.hue_5 },
        GitSignsStagedAdd = { fg = colors.hue_4_2 },
        GitSignsStagedChange = { fg = colors.hue_6_2 },
        GitSignsStagedDelete = { fg = colors.hue_5_2 },
        DiffAdd = { bg = colors.diff_add },
        DiffChange = { bg = colors.diff_change },
        DiffDelete = { bg = colors.diff_delete },
        DiffText = { bg = colors.diff_text },
        DiffAdded = { fg = colors.hue_4 },
        DiffFile = { fg = colors.hue_5 },
        DiffNewFile = { fg = colors.hue_4 },
        DiffLine = { fg = colors.hue_2 },
        DiffRemoved = { fg = colors.hue_5 },

        ----------------
        -- diffs.nvim --
        ----------------
        DiffsConflictOurs = { bg = colors.diff_add },
        DiffsConflictTheirs = { bg = colors.diff_change },
        DiffsConflictBase = { bg = colors.diff_ancestor },
        DiffsConflictMarker = { fg = colors.mono_3, bold = true },

        --------------
        -- Spelling --
        --------------
        SpellBad = { sp = colors.hue_5, undercurl = true },
        SpellLocal = { sp = colors.hue_4, undercurl = true },
        SpellCap = { sp = colors.hue_2, undercurl = true },
        SpellRare = { sp = colors.hue_6, undercurl = true },

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

        DiagnosticUnderlineError = { sp = colors.hue_5, undercurl = true },
        DiagnosticUnderlineWarn = { sp = colors.hue_6, undercurl = true },
        DiagnosticUnderlineInfo = { sp = colors.hue_2, undercurl = true },
        DiagnosticUnderlineHint = { sp = colors.mono_1, undercurl = true },
        DiagnosticUnderlineOk = { sp = colors.hue_4, underdotted = true },

        LspReferenceText = { bg = colors.special_grey },
        LspReferenceRead = { bg = colors.special_grey },
        LspReferenceWrite = { fg = colors.hue_6, reverse = true },
        LspSignatureActiveParameter = { fg = colors.yellow, bold = true },
        LspInlayHint = { fg = colors.mono_3, bg = colors.syntax_cursor },
        SnippetTabstop = { link = 'Visual' },

        -------------------------
        -- TreeSitter Refactor --
        -------------------------
        TSDefinition = { link = 'LspReferenceWrite' },
        TSDefinitionUsage = { link = 'LspReferenceRead' },
        TSCurrentScope = { fg = colors.hue_6, reverse = true },

        ------------------------
        -- TreeSitter Context --
        ------------------------
        TreesitterContext = { link = 'CursorLine' },

        -----------------------------
        -- TreeSitter Highlighting --
        -----------------------------
        ['@annotation'] = { fg = colors.hue_6 },
        ['@attribute'] = { link = '@function' },
        ['@attribute.builtin'] = { link = '@function.builtin' },
        ['@boolean'] = { fg = colors.hue_6_2 },
        ['@character'] = { fg = colors.hue_4 },
        ['@character.special'] = { link = 'SpecialChar' },
        ['@comment'] = { fg = colors.mono_3, italic = true },
        ['@comment.error'] = { fg = colors.hue_5 },
        ['@comment.warning'] = { fg = colors.hue_6 },
        ['@comment.info'] = { fg = colors.hue_2 },
        ['@comment.hint'] = { fg = colors.mono_1 },
        ['@comment.note'] = { fg = colors.hue_2 },
        ['@comment.todo'] = { fg = colors.hue_6, italic = true },
        ['@comment.todo.unchecked'] = { fg = colors.hue_5, italic = true },
        ['@comment.todo.checked'] = { fg = colors.hue_4, italic = true },
        ['@constant'] = { fg = colors.hue_6_2 },
        ['@constant.builtin'] = { link = '@constant' },
        ['@constant.macro'] = { fg = colors.mono_1 },
        ['@constructor'] = { link = '@type' },
        ['@diff.plus'] = { link = 'DiffAdd' },
        ['@diff.minus'] = { link = 'DiffDelete' },
        ['@diff.delta'] = { link = 'DiffChange' },
        ['@function'] = { fg = colors.hue_2 },
        ['@function.builtin'] = { link = '@function' },
        ['@function.macro'] = { fg = colors.hue_6 },
        ['@keyword'] = { fg = colors.hue_3 },
        ['@keyword.function'] = { fg = colors.pink },
        ['@keyword.operator'] = { fg = colors.syntax_accent },
        ['@keyword.return'] = { fg = colors.pink, bold = true },
        ['@keyword.directive'] = { link = 'PreProc' },
        ['@keyword.directive.define'] = { link = 'Define' },
        ['@keyword.storage'] = { link = 'StorageClass' },
        ['@keyword.conditional'] = { link = '@keyword' },
        ['@keyword.debug'] = { link = 'Debug' },
        ['@keyword.exception'] = { fg = colors.pink },
        ['@keyword.import'] = { fg = colors.pink },
        ['@keyword.repeat'] = { fg = colors.syntax_accent },
        ['@label'] = { fg = colors.hue_2 },
        ['@function.method'] = { link = '@function' },
        ['@function.method.call'] = { link = '@function' },
        ['@module'] = { fg = colors.mono_1, italic = true }, -- aka namespace
        ['@none'] = {},
        ['@number'] = { fg = colors.hue_6_2 },
        ['@number.float'] = { link = '@number' },
        ['@operator'] = { fg = colors.syntax_accent },
        ['@property'] = { fg = colors.hue_5 },
        ['@punctuation.delimiter'] = { fg = colors.syntax_accent },
        ['@punctuation.bracket'] = { fg = colors.hue_2 },
        ['@string'] = { fg = colors.hue_4 },
        ['@string.escape'] = { fg = colors.mono_1 },

        ['@string.special'] = { fg = colors.hue_6 },

        ['@string.special.url'] = { fg = colors.mono_2, underline = true },
        ['@tag'] = { fg = colors.hue_5 },
        ['@tag.delimiter'] = { fg = colors.mono_3 },
        ['@markup'] = { fg = colors.hue_6 },
        ['@markup.strong'] = { bold = true },
        ['@markup.italic'] = { italic = true },
        ['@markup.underline'] = { underline = true },
        ['@markup.strikethrough'] = { strikethrough = true },
        ['@markup.heading'] = { fg = colors.hue_6, bold = true },
        ['@markup.raw'] = { fg = colors.markup_special },
        ['@markup.math'] = {},
        ['@markup.list'] = { fg = colors.markup_special },
        ['@markup.link'] = {},
        ['@markup.link.url'] = { link = '@string.special.url' },
        ['@markup.link.label'] = { fg = colors.markup_special },
        ['@markup.environment'] = {},
        ['@markup.environment.name'] = {},
        ['@warning'] = { fg = colors.hue_6 },
        ['@danger'] = { fg = colors.hue_5 },
        ['@type'] = { fg = colors.hue_6 },
        ['@type.definition'] = { link = '@type' },
        ['@type.builtin'] = { fg = colors.hue_2 },
        ['@variable'] = { fg = colors.mono_1 },
        ['@variable.builtin'] = { fg = colors.hue_6 },
        ['@variable.parameter'] = { fg = colors.hue_5, italic = true },
        ['@variable.member'] = { fg = colors.hue_5 }, -- aka field

        -------------------------
        -- LSP Semantic Tokens --
        -------------------------
        ['@lsp.type.namespace'] = { link = '@module' },
        ['@lsp.type.type'] = { link = '@type' },
        ['@lsp.type.class'] = { link = '@type' },
        ['@lsp.type.enum'] = { link = '@type' },
        ['@lsp.type.interface'] = { link = 'Identifier' }, -- link = '@type'
        ['@lsp.type.struct'] = { link = 'Structure' },
        ['@lsp.type.parameter'] = { italic = true },
        -- ['@lsp.type.variable'] = { link = '@variable' },
        ['@lsp.type.variable'] = {}, -- use TreeSitter styles for regular variables
        ['@lsp.type.property'] = { link = '@property' },
        ['@lsp.type.enumMember'] = { link = '@constant' },
        ['@lsp.type.function'] = { link = '@function' },
        ['@lsp.type.method'] = { link = '@function.method' },
        ['@lsp.type.macro'] = { link = '@function.macro' },
        ['@lsp.type.decorator'] = { link = '@function' },
        ['@lsp.type.comment'] = {}, -- link = '@comment', use TreeSitter to highlight todo comments
        ['@lsp.type.keyword'] = { link = '@keyword' },
        ['@lsp.mod.deprecated'] = { link = 'DiagnosticDeprecated' },
        ['@lsp.mod.readonly'] = { link = '@constant' },
        ['@lsp.mod.typeHint'] = { link = 'Structure' },
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

        ------------
        -- CUSTOM --
        ------------
        ['@variable.parameter.reference'] = {
            fg = colors.mono_1,
            italic = true,
        },

        ---------
        -- Lua --
        ---------
        ['@constructor.lua'] = { link = '@type.builtin' }, -- table constructor

        ------------
        -- Python --
        ------------
        ['@lsp.mod.decorator.python'] = { link = '@function' },

        ---------
        -- CSV --
        ---------
        ['@punctuation.delimiter.csv'] = { fg = colors.mono_3 },
        CsvViewDelimiter = { link = '@punctuation.delimiter.csv' },
        CsvViewHeaderLine = { bold = true },
        CsvViewStickyHeaderSeparator = { fg = colors.mono_4 },
        CsvViewCol0 = { fg = colors.hue_2 },
        CsvViewCol1 = { fg = colors.hue_6 },
        CsvViewCol2 = { fg = colors.hue_3 },
        CsvViewCol3 = { fg = colors.hue_4 },
        CsvViewCol4 = { fg = colors.hue_5 },
        CsvViewCol5 = { fg = colors.hue_1 },
        CsvViewCol6 = { fg = colors.hue_6_2 },
        CsvViewCol7 = { fg = colors.hue_4_2 },
        CsvViewCol8 = { fg = colors.hue_5_2 },

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
        TelescopeMatching = { fg = colors.hue_6_2 },
        TelescopePromptPrefix = { fg = colors.hue_5 },

        ------------
        -- Neogit --
        ------------
        NeogitNotificationInfo = { link = 'NotifyINFOBorder' },
        NeogitNotificationWarning = { link = 'NotifyWARNBorder' },
        NeogitNotificationError = { link = 'NotifyERRORBorder' },
        NeogitDiffContextHighlight = { fg = colors.mono_1 },
        NeogitDiffAddHighlight = { fg = colors.hue_4, bg = colors.diff_add },
        NeogitDiffDeleteHighlight = {
            fg = colors.hue_5,
            bg = colors.diff_delete,
        },
        NeogitHunkHeader = { fg = colors.mono_3 },
        NeogitHunkHeaderHighlight = {
            fg = colors.mono_2,
            bg = colors.syntax_cursor,
        },

        -------------
        -- Neotest --
        -------------
        NeotestPassed = { link = 'DiagnosticOk' },
        NeotestFailed = { link = 'DiagnosticError' },
        NeotestRunning = { link = 'DiagnosticHint' },
        NeotestSkipped = { fg = colors.mono_2 },
        NeotestTest = { fg = colors.mono_2 },
        NeotestDir = { link = 'DiagnosticInfo' },
        NeotestFile = { link = 'DiagnosticHint' },
        NeotestAdapterName = { bold = true },
        NeotestFocused = { link = 'CursorLine' },
        NeotestIndent = { link = 'NonText' },
        NeotestExpandMarker = { link = 'NonText' },
        NeotestMarked = { fg = colors.hue_2 },
        NeotestWatching = { fg = colors.hue_5 },
        NeotestNamespace = { link = '@type' },
        NeotestWinSelect = { link = 'Special' },
        NeotestTarget = { fg = colors.hue_3 },
        NeotestUnknown = { fg = colors.mono_2 },

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
        BlinkCmpKindReference = { italic = true },
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

        ---------------
        -- Which Key --
        ---------------
        WhichKey = { link = '@markup.link.label' },
        WhichKeyDesc = { link = 'Normal' },
        WhichKeyGroup = { link = 'Directory' },
        WhichKeyBorder = { fg = colors.mono_4 },

        ---------
        -- NUI --
        ---------
        NuiComponentsButton = { fg = colors.markup_special },
        NuiComponentsButtonActive = { fg = colors.mono_3 },
        NuiComponentsButtonFocus = { link = 'Search' },
        -- NuiComponentsSelectOption = {},
        NuiComponentsSelectOptionSelected = { fg = colors.hue_5 },
        -- NuiComponentsSelectSeparator = {},
        NuiComponentsSelectNodeFocused = { link = 'CursorLine' },

        ---------------
        -- Octo.nvim --
        ---------------
        OctoGreen = { fg = colors.hue_4_2 },
        OctoRed = { fg = colors.hue_5_2 },
        OctoPurple = { fg = colors.hue_3 },
        OctoYellow = { fg = colors.yellow },
        OctoBlue = { fg = colors.hue_2 },
        OctoGrey = { fg = colors.mono_2 },

        GreenFloat = { link = 'OctoGreen' },
        RedFloat = { link = 'OctoRed' },
        PurpleFloat = { link = 'OctoPurple' },
        YellowFloat = { link = 'OctoYellow' },
        BlueFloat = { link = 'OctoBlue' },
        GreyFloat = { link = 'OctoGrey' },

        BubbleGreen = { fg = colors.mono_2, bg = colors.hue_4 },
        BubbleRed = { fg = colors.mono_2, bg = colors.hue_5_2 },
        BubblePurple = { fg = colors.markup_special, bg = colors.hue_3 },
        BubbleYellow = { fg = colors.mono_2, bg = colors.yellow },
        BubbleBlue = { fg = colors.mono_2, bg = colors.hue_2 },
        BubbleGrey = { fg = colors.markup_special, bg = colors.mono_2 },

        BubbleDelimiterGreen = { link = 'OctoGreen' },
        BubbleDelimiterRed = { link = 'OctoRed' },
        BubbleDelimiterPurple = { link = 'OctoPurple' },
        BubbleDelimiterYellow = { link = 'OctoYellow' },
        BubbleDelimiterBlue = { link = 'OctoBlue' },
        BubbleDelimiterGrey = { link = 'OctoGrey' },

        OctoDetailsValue = { fg = colors.hue_1 },

        --------------------------
        -- opencode-native.nvim --
        --------------------------
        OpencodeBackground = { bg = colors.panel },
        OpencodeNormal = { bg = colors.panel },
        OpencodeSignColumn = { bg = colors.panel },
        OpencodeBorder = { link = 'WinSeparator' },
        OpencodeSessionDescription = { fg = colors.mono_3, bg = colors.panel },
        OpencodeContextBar = { fg = colors.mono_3, bg = colors.panel },
        OpencodeHint = { fg = colors.mono_3, bg = colors.panel },
        OpencodeMessageRoleAssistant = { fg = colors.syntax_accent },
        OpencodeMessageRoleUser = { fg = colors.hue_4 },
        OpencodeInputLegend = {
            fg = colors.syntax_accent,
            bg = colors.panel,
            bold = true,
        },
        OpencodeDiffAdd = { link = 'DiffAdd' },
        OpencodeDiffDelete = { link = 'DiffDelete' },
        OpencodeAgentPlan = { fg = colors.syntax_bg, bg = colors.hue_2 },
        OpencodeAgentBuild = { fg = colors.syntax_bg, bg = colors.hue_6 },
        OpencodeAgentCustom = { fg = colors.syntax_bg, bg = colors.hue_3 },
        RenderMarkdownTableHead = { link = 'Normal' },
        RenderMarkdownChecked = { fg = colors.hue_4 },
        RenderMarkdownTodo = { fg = colors.hue_5 },
        OpencodeWinSeparator = { fg = colors.syntax_cursor, bg = colors.panel },

        ---------------
        -- edgy.nvim --
        ---------------
        EdgyNormal = { bg = colors.panel },
        EdgyWinBar = { bg = colors.panel },
        EdgyWinBarNC = { bg = colors.panel },
        EdgyWinSeparator = { fg = colors.syntax_bg, bg = colors.syntax_bg },
        -- Snacks Explorer
        SnacksWinSeparator = { link = 'EdgyWinSeparator' },
        SnacksPickerList = { link = 'EdgyNormal' },
    }
    return highlights
end

return M
