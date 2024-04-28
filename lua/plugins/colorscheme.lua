return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    config = function()
      --vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_transparent_background = 2
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_float_style = "dim"
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    transparent = true, -- do not set background color
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    theme = "wave", -- Load "wave" theme when 'background' option is not set
    background = { -- map the value of 'background' option to a theme
      dark = "dragon", -- try "dragon" !
      light = "lotus",
    },
  },

  { "xero/miasma.nvim" },
  { "comfysage/evergarden" },
  { "EdenEast/nightfox.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },

  { "rose-pine/neovim", name = "rose-pine" },
  {
    "sainnhe/everforest",
    priority = 1000,
    config = function()
      vim.g.everforest_diagnostic_line_highlight = 1
    end,
  },
  { "marko-cerovac/material.nvim", disable = {
    background = true,
  } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material-deep-ocean",
    },
  },
}
