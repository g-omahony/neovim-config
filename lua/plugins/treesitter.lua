return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    endwise = { enable = true },
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "html",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "regex",
      "ruby",
      "vim",
      "vimdoc",
      "yaml",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
}
