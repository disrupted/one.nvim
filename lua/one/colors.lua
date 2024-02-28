local colors = {
    pink = '#d291e4',
    yellow = '#ffcb43',
}

local variants = {
    light = vim.tbl_extend('error', colors, {
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
        diff_add = '#98c379',
        diff_change = '#e5c07b',
        diff_delete = '#e06c75',
        diff_text = '#d19a66',
    }),
    dark = vim.tbl_extend('error', colors, {
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
    }),
}

local M = {}
M.get = function()
    return vim.o.background == 'light' and variants.light or variants.dark
end
return M

-- TODO
-- return vim.o.background == 'light' and variants.light or variants.dark
