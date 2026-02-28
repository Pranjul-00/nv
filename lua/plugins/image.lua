return {
  {
    "3rd/image.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      backend = "kitty", -- Default to kitty, will fallback to ueberzug or sixel if available
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" },
        },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      window_overlap_clear_enabled = false,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
      editor_only_render_when_focused = false,
      tmux_show_only_in_active_window = false,
      always_reveal_image = false,
    },
  },
}
