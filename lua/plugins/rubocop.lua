return {
  "nvimtools/none-ls.nvim",
  event = "LazyFile",
  dependencies = { "mason.nvim" },
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.root_dir = opts.root_dir or require("null-ls.utils").root_pattern("Gemfile", ".git")
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.formatting.rubocop,
      nls.builtins.diagnostics.rubocop,
    })
  end,
}
