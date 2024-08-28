return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      contrast = "hard",
    })
    vim.cmd("colorscheme gruvbox")
    vim.opt.background = "dark"
  end,
}
