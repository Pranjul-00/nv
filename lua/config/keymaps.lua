-- Shifting blocks in visual mode
-- Tab to shift right
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Shift block right" })
-- Shift-Tab to shift left
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Shift block left" })

-- Optional: Also in normal mode (consistent with VS Code)
vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent line" })
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Outdent line" })
