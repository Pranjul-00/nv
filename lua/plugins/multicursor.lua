return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    -- Enable mouse support for multi-cursors
    vim.g.VM_mouse_mappings = 1
    -- The default is usually Ctrl + Left Click. 
    -- Mapping Alt + Click can be tricky as terminals/OS often capture it.
  end,
}
