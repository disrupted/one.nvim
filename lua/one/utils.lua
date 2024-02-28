local M = {}

---@param highlights table<string, vim.api.keyset.highlight>
M.load = function(highlights)
    for group, highlight in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, highlight)
    end
end

return M
