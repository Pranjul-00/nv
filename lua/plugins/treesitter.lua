return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local status, ts = pcall(require, "nvim-treesitter")
      if not status then return end
      
      ts.setup({
        install_dir = vim.fn.stdpath("data") .. "/site"
      })

      -- Install languages
      local langs = { "lua", "cpp", "python", "javascript", "rust", "circom" }
      ts.install(langs)

      -- Enable highlighting
      vim.api.nvim_create_autocmd("FileType", {
        pattern = langs,
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  }
}
