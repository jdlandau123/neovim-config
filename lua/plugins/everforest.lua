return {
  "neanias/everforest-nvim",
  name = "everforest",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("everforest").setup({
      vim.cmd.colorscheme "everforest",
      -- vim.cmd("set background=light"),
      -- background = "hard"
    })
  end,
}
