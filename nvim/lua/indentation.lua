local set = vim.opt
--
-- Indentation
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true

-- Set some languages to 2
local filetypes = {
    "sql",
    "html",
    "ml"
}

for i = 1, #(filetypes), 1 do
    vim.api.nvim_create_autocmd("FileType", {
        pattern = filetypes[i],
        callback = function()
            vim.opt_local.tabstop = 2
            vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
        end
    })
end
