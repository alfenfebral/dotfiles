local M = {}

M.ui = {
  theme = "ayu-dark",
}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"

return M
