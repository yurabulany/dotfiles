return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon").setup({
      -- Add any custom settings here
    })

    -- Optionally set keybindings
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>hm", mark.add_file, { desc = "Harpoon: Add file" })
    vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu, { desc = "Harpoon: Quick menu" })
    vim.keymap.set("n", "<leader>h1", function()
      ui.nav_file(1)
    end, { desc = "Harpoon: Go to file 1" })
    vim.keymap.set("n", "<leader>h2", function()
      ui.nav_file(2)
    end, { desc = "Harpoon: Go to file 2" })
    vim.keymap.set("n", "<leader>h3", function()
      ui.nav_file(3)
    end, { desc = "Harpoon: Go to file 3" })
    vim.keymap.set("n", "<leader>h4", function()
      ui.nav_file(4)
    end, { desc = "Harpoon: Go to file 4" })
    vim.keymap.set("n", "<leader>hd", function()
      require("harpoon.mark").rm_file()
    end, { desc = "Harpoon: Remove current file" })
  end,
}
