local M = {}

M.setup = function()
    vim.opt.termguicolors = true
    if vim.g.colors_name then
        vim.cmd 'hi clear'
        vim.cmd 'syntax reset'
    end
    vim.g.colors_name = 'one'

    local colors = require('one.colors').get()
    local highlights = require('one.highlights').get_highlights(colors)
    require('one.utils').load(highlights)
end

return M
