return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      border = "rounded",
      -- border = "double",
      blend = 10,
      dimensions = {
        height = 0.9,
        width = 0.8,
        x = 0.6,
        y = 0.5,
      },
    })
  end,
}
