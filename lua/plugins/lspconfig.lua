return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      solargraph = {
        exclude = "spec/**/*",
      },
    },
  },
}
