-- 1. KILL ALL WARNINGS (Must be the very first lines)
vim.lsp.set_log_level("off")
vim.g.deprecation_warnings = false
vim.notify = function(msg, log_level, _opts)
    if msg:find("deprecated") or msg:find("lspconfig") then return end
    print(msg)
end

-- 2. Standard Setup
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.lazy")
