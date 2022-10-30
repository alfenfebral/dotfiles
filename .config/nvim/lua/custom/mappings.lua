local M = {}

local function termcodes(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

M.general = {
  t = {
    ["jk"] = { termcodes "<C-\\><C-N>", "   escape terminal mode" },
    ["JK"] = { termcodes "<C-\\><C-N>", "   escape terminal mode" },
  },
  n = {
    ["<C-Left>"] = { ":vertical resize +5 <CR>", "vertical resize +5" },
    ["<C-Right>"] = { ":vertical resize -5 <CR>", "vertical resize -5" },
    ["<C-Up>"] = { ":resize +3 <CR>", "horizontal resize +3" },
    ["<C-Down>"] = { ":resize -3 <CR>", "horizontal resize -3" },

    ["<Leader>g"] = { ":G <CR>", "Git toogle" },
    ["<Leader>d"] = { ":Gvdiffsplit <CR>", "Git vertical diff split" },
    ["<Leader>y"] = { ":Neoformat <CR>", "Formating style" },
    ["<Leader>t"] = { ":tabnew <CR>", "Tab new workspace" },
    ["<Leader>u"] = { ":tabprevious <CR>", "Previous tab workspace" },
    ["<Leader>o"] = { ":tabnext <CR>", "Next tab workspace" },
    ["<Leader>r"] = { ":tabclose <CR>", "Close tab workspace" },

    ["<Leader>s"] = { ":SymbolsOutline <CR>", "Toggle symbol outline" },
  },
}

M.tabufline = {
  plugin = true,

  n = {
    ["<C-l>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["<C-h>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    ["<C-x>"] = {
      function()
        require("nvchad_ui.tabufline").closeAllBufs()
      end,

      "close all buffers",
    },
  },
}

return M
