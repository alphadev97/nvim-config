return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Automatically open NeoTree when entering a directory
    vim.cmd([[autocmd VimEnter * if isdirectory(expand('%')) | exe 'Neotree filesystem reveal left' | endif]])

    -- Keymap to toggle NeoTree
    vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", { silent = true, noremap = true })
  end,
}
