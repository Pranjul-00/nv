return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- This shortcut (Leader + e) will toggle the tree
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { silent = true })
  end
}
