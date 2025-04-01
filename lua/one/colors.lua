local colors = {
    pink = '#d291e4',
    yellow = '#ffcb43',
}

local variants = {
    light = vim.tbl_extend('error', colors, {
        mono_1 = '#494b53', -- dark grey
        mono_2 = '#696c77', -- medium grey
        mono_3 = '#a0a1a7', -- light grey
        mono_4 = '#c2c2c3', -- very light grey
        hue_1 = '#0184bc', -- blue
        hue_2 = '#4078f2', -- bright blue
        hue_3 = '#a626a4', -- purple
        hue_4 = '#50a14f', -- green
        hue_4_2 = '#3b8a45', -- dark green
        hue_5 = '#e45649', -- red
        hue_5_2 = '#ca1243', -- dark red
        hue_6 = '#c18401', -- orange
        hue_6_2 = '#986801', -- dark orange
        syntax_bg = '#efefef',
        syntax_gutter = '#9e9e9e',
        syntax_cursor = '#f5f5f5',
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
        diff_add = '#daf1cb',
        diff_change = '#eee1c7',
        diff_delete = '#efc8cb',
        diff_text = '#efdbc8',
        diff_ancestor = '#d8b1e4',
        debug_line = '#f2dfe0',
        markup_special = '#232428',
    }),
    dark = vim.tbl_extend('error', colors, {
        mono_1 = '#abb2bf', -- light grey
        mono_2 = '#828997', -- medium grey
        mono_3 = '#5c6370', -- dark grey
        mono_4 = '#4b5263', -- charcoal
        hue_1 = '#56b6c2', -- teal
        hue_2 = '#61afef', -- light blue
        hue_3 = '#c678dd', -- purple
        hue_4 = '#98c379', -- green
        hue_4_2 = '#50a14f', -- dark green
        hue_5 = '#e06c75', -- red
        hue_5_2 = '#be5046', -- dark red
        hue_6 = '#e5c07b', -- light orange
        hue_6_2 = '#d19a66', -- orange
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
        diff_ancestor = '#68217a',
        debug_line = '#663a3f',
        markup_special = '#d3dcec',
    }),
}

local M = {}
M.get = function()
    return vim.o.background == 'light' and variants.light or variants.dark
end
return M
