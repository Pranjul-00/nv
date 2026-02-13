return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Automatically install these for your course work
        ensure_installed = { "lua_ls", "clangd", "pyright" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- ADD THIS LINE HERE
      vim.lsp.set_log_level("off") 

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})  -- For your C++ DSA work
      lspconfig.pyright.setup({}) -- For your Python/ML projects

      -- Keybindings: Press 'K' to see documentation (hover)
      -- Press 'gd' to Go to Definition
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end,
  }
}
