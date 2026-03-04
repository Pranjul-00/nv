return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    opts = {
      -- Full support for superscripts (^2 -> ²) and subscripts (_2 -> ₂)
      -- in Markdown and other supported formats via Neovim's conceal feature.
      latex = {
        enabled = true,
        -- Use image.nvim for true LaTeX rendering if available
        render_modes = { "n", "c", "t", "v" },
      },
      heading = {
        sign = false,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
      checkbox = {
        enabled = true,
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰄲 " },
      },
    },
    ft = { "markdown", "quarto", "rmd", "vimwiki" },
  },
}
