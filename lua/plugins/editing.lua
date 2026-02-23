return {
  -- "gcc" to comment a line, "gc" in visual mode to comment a block
  {
    "numToStr/Comment.nvim",
    opts = {},
  },

  -- Add/delete/replace surrounds (brackets, quotes, etc.)
  -- sa: add, sd: delete, sr: replace
  {
    "echasnovski/mini.surround",
    version = false,
    config = function()
      require("mini.surround").setup()
    end,
  },
}
