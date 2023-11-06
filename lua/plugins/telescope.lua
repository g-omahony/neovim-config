return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      preview = {
        timeout = 500,
        msg_bg_fillchar = "",
      },
      multi_icon = " ",
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
      },
      borderchars = {
        prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
        results = { " " },
        preview = { " " },
      },
      prompt_prefix = "❯ ",
      selection_caret = "❯ ",
      sorting_strategy = "ascending",
      color_devicons = true,
      layout_config = {
        prompt_position = "top",
        horizontal = {
          width = 0.8,
          width_padding = 0.03,
          height_padding = 0.1,
          preview_width = 0.6,
        },
        vertical = {
          width_padding = 0.04,
          height_padding = 1,
          preview_height = 0.5,
        },
      },
    },
  },
}
