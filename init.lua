-- 1. Silence all LSP warnings and deprecations globally
vim.lsp.set_log_level("off")
vim.g.deprecation_warnings = false

-- 2. Set your Leader Key (Space)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 3. Load your settings and plugins
require("config.options")
require("config.lazy")
