return {
  {
    "echasnovski/mini.icons",
    lazy = true,
    opts = {
      file = {
        [".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
        ["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
      },
      filetype = {
        dotenv = { glyph = "", hl = "MiniIconsYellow" },
      },
    },
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  {
    "felipejz/i18n-menu.nvim",
    dependencies = {
      "smjonas/snippet-converter.nvim",
    },
    config = function()
      require("i18n-menu").setup()
      vim.keymap.set("n", "<leader>ii", ":TranslateMenu<cr>")
      vim.keymap.set("n", "<leader>id", ":TranslateDefault<cr>")
    end,
  },
  --tailwind
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        tailwind = true,
      },
    },
  },
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
██╗     ███████╗    ████████╗██████╗ ██╗    ████████╗ █████╗ ███╗   ███╗
██║     ██╔════╝    ╚══██╔══╝██╔══██╗██║    ╚══██╔══╝██╔══██╗████╗ ████║
██║     █████╗         ██║   ██████╔╝██║       ██║   ███████║██╔████╔██║
██║     ██╔══╝         ██║   ██╔══██╗██║       ██║   ██╔══██║██║╚██╔╝██║
███████╗███████╗       ██║   ██║  ██║██║       ██║   ██║  ██║██║ ╚═╝ ██║
╚══════╝╚══════╝       ╚═╝   ╚═╝  ╚═╝╚═╝       ╚═╝   ╚═╝  ╚═╝╚═╝     ╚═╝
                                                                        
        ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
        },
      },
    },
  },
}
