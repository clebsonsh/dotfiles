return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  init = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    vim.keymap.set("n", "<Leader>h", function()
      harpoon:list():add()
    end)

    local toggle_opts = {
      border = "rounded",
      title_pos = "center",
      ui_width_ratio = 0.40,
    }

    vim.keymap.set("n", "<C-h>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), toggle_opts)
    end)

    vim.keymap.set("n", "<Leader>1", function()
      harpoon:list():select(1)
    end)

    vim.keymap.set("n", "<Leader>2", function()
      harpoon:list():select(2)
    end)

    vim.keymap.set("n", "<Leader>3", function()
      harpoon:list():select(3)
    end)

    vim.keymap.set("n", "<Leader>4", function()
      harpoon:list():select(4)
    end)
  end,
}
