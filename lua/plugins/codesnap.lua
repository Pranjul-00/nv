return {
  "mistricky/codesnap.nvim",
  build = "make",
  lazy = false, -- Force load to ensure commands are available
  keys = {
    { "<leader>cc", "<cmd>CodeSnap<cr>", mode = { "n", "x" }, desc = "Save selected code snapshot into clipboard" },
    { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = { "n", "x" }, desc = "Save selected code snapshot in ~/Pictures" },
  },
  opts = {
    save_path = "/home/drogon/Pictures",
    has_number = true,
    has_line_number = false,
    bg_theme = "summer",
    watermark = "",
    bg_color = "#535c68",
  },
}
