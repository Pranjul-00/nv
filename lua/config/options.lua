vim.opt.number = true           -- Absolute line numbers
vim.opt.relativenumber = true   -- Relative numbers for fast jumping
vim.opt.cursorline = true       -- Highlight current line
vim.opt.tabstop = 4             -- Standard indent for CIC assignments
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = "a"             -- Enable mouse support
vim.opt.scrolloff = 10          -- Keep 10 lines above/below cursor (smooth selection)
vim.opt.smoothscroll = true     -- Enable smooth scrolling (Neovim 0.10+)

-- Enable system clipboard
vim.opt.clipboard = "unnamedplus"

-- Enable conceal for beautiful math/markdown
vim.opt.conceallevel = 2         -- Hide markup (like ^) and show replacement symbols
vim.opt.concealcursor = "nc"     -- Allow concealment in normal and command modes

-- Filetype detection for Circom
vim.filetype.add({
  extension = {
    circom = "circom",
  },
})
