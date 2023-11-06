return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      solargraph = {
        exclude = "spec/**/*",
        cmd = { "/Users/gomahony/.rbenv/shims/solargraph", "stdio" },
      },
      rubocop = {
        cmd = { "bundle", "exec", "rubocop" },
      },
    },
  },
}
