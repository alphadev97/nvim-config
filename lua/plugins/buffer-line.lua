return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local bufferline = require("bufferline")

			bufferline.setup({
				options = {
					mode = "buffers",
					separator_style = "slant",
					diagnostics = "nvim_lsp",
				},
			})

			-- Keymaps for shuffling buffers
			vim.keymap.set("n", "<leader>[", ":BufferLineCyclePrev<CR>", { silent = true, noremap = true })
			vim.keymap.set("n", "<leader>]", ":BufferLineCycleNext<CR>", { silent = true, noremap = true })
			vim.keymap.set("n", "<leader>mbl", ":BufferLineMoveNext<CR>", { silent = true, noremap = true })
			vim.keymap.set("n", "<leader>mbr", ":BufferLineMovePrev<CR>", { silent = true, noremap = true })
		end,
	},
}
