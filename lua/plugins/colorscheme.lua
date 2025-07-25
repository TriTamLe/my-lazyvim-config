return {
  {

    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oldworld",
    },
  },
  {
    "rebelot/kanagawa.nvim",
    compile = false, -- enable compiling the colorscheme
    undercurl = true, -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false, -- do not set background color
    dimInactive = false, -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    colors = { -- add/modify theme and palette colors
      palette = {},
      theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
      return {}
    end,
    theme = "wave", -- Load "wave" theme when 'background' option is not set
    background = { -- map the value of 'background' option to a theme
      dark = "wave", -- try "dragon" !
      light = "lotus",
    },
  },
  {
    "ramojus/mellifluous.nvim",
    -- version = "v0.*", -- uncomment for stable config (some features might be missed if/when v1 comes out)
    config = function()
      require("mellifluous").setup({}) -- optional, see configuration section.
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "oxfist/night-owl.nvim",
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "neanias/everforest-nvim",
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup()
    end,
  },
  { "savq/melange-nvim" },

  {
    "comfysage/evergarden",
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    opts = {
      transparent_background = true,
      variant = "medium", -- 'hard'|'medium'|'soft'
      overrides = {}, -- add custom overrides
    },
  },
  {
    "yashguptaz/calvera-dark.nvim",
  },
}
