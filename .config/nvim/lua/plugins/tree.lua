return {
	'nvim-tree/nvim-tree.lua',
	init = function ()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
	opts = {},
	keys = {
		{
			'<leader>t',
			function ()
				require('nvim-tree.api').tree.toggle()
			end,
			mode = 'n'
		}

	}
}
