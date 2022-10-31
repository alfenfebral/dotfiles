local opt = vim.opt

opt.mouse = ""

vim.api.nvim_command "autocmd BufWritePre *.js Neoformat"
vim.api.nvim_command "autocmd BufWritePre *.ts Neoformat"

vim.api.nvim_command "autocmd BufNewFile,BufRead *.move set filetype=move"

vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true
vim.g.copilot_tab_fallback = ""

vim.api.nvim_set_keymap("i", "<C-I>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
end

map("n", "p", '"+p')
map("n", "p", '"+p')
map("n", "d", '"+d')

map("v", "y", '"+y')
map("v", "p", '"+p')
map("v", "d", '"+d')
