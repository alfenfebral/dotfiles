-- require("symbols-outline").setup {
--   autofold_depth = 4,
-- } -- TODO move to config
--
return {
  ["rvmelkonian/move.vim"] = {},
  ["tpope/vim-fugitive"] = {},
  ["f-person/git-blame.nvim"] = {},
  ["sbdchd/neoformat"] = {},
  ["simrat39/symbols-outline.nvim"] = {},
  ["NvChad/nvterm"] = {
    behavior = {
      auto_insert = false,
    },
  },
  ["kyazdani42/nvim-tree.lua"] = {
    override_options = {
      view = {
        adaptive_size = false,
        float = {
          enable = true,
          open_win_config = {
            width = 60,
            height = 40,
          },
        },
      },
      actions = {
        open_file = {
          resize_window = false,
        },
      },
    },
  },
  ["folke/which-key.nvim"] = false,
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "block",
      },
    },
    tabufline = {
      lazyload = false,
    },
  },
  ["github/copilot.vim"] = {},
}
