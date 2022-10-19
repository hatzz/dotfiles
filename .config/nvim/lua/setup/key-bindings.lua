local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "gp", ":bprev<CR>", { silent = true })
map("n", "gn", ":bnext<CR>", { silent = true })
vim.keymap.set('', '<C-p>', '"+p')
vim.keymap.set('', '<C-y>', '"+y')

