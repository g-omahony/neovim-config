return {
  "nvimtools/none-ls.nvim",
  event = "LazyFile",
  dependencies = {
    {
      "williamboman/mason.nvim",
      -- opts = function(_, opts)
      --   opts.ensure_installed = opts.ensure_installed or {}
      --   vim.list_extend(opts.ensure_installed, { "rubocop@1.45.1" })
      -- end,
    },
  },
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.root_dir = opts.root_dir or require("null-ls.utils").root_pattern("Gemfile", ".git")
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.formatting.rubocop,
      nls.builtins.diagnostics.rubocop,
    })
  end,
}
