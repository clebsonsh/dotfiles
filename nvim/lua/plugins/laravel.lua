return {
  {
    "adibhanna/laravel.nvim",
    ft = { "php", "blade" },
    dependencies = {
      "folke/snacks.nvim", -- Optional: for enhanced UI
      "tpope/vim-dotenv",
      "nvim-telescope/telescope.nvim",
      "MunifTanjim/nui.nvim",
      "kevinhwang91/promise-async",
    },
    config = function()
      require("laravel").setup({
        notifications = false,
        debug = false,
        keymaps = true,
      })
    end,
  },
  cmd = { "Laravel" },
  keys = {
    { "<leader>la", ":Laravel artisan<cr>" },
    { "<leader>lr", ":Laravel routes<cr>" },
    { "<leader>lm", ":Laravel related<cr>" },
  },
  event = { "VeryLazy" },
  {
    "adibhanna/phprefactoring.nvim",
    enabled = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    ft = "php",
    config = function()
      require("phprefactoring").setup()
    end,
  },
}
