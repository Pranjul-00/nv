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
require("config.keymaps")
require("config.lazy")

-- 3. Custom Keymaps
vim.keymap.set({ 'n', 'i', 'v' }, '<M-e>', '<End>', { desc = 'Go to end of line' })

-- Replicate VS Code's Ctrl + Enter behavior (Insert line below)
vim.keymap.set({ 'n', 'i' }, '<C-CR>', '<Esc>o', { desc = 'Insert line below' })

-- Auto-sync git repo on save
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = vim.fn.stdpath("config") .. "/*",
    callback = function()
        vim.fn.jobstart({"/home/drogon/.config/nvim/git-sync.sh"}, {detach = true})
    end,
})

-- WSL Clipboard support
if vim.fn.has('wsl') == 1 then
    vim.g.clipboard = {
        name = 'WslClipboard',
        copy = {
            ['+'] = 'clip.exe',
            ['*'] = 'clip.exe',
        },
        paste = {
            ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw))',
            ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw))',
        },
        cache_enabled = 0,
    }
end
