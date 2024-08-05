local g = vim.g
local keymap = vim.keymap

g.mapleader = 'ç'
g.maplocalleader = 'ç'

keymap.set('n', '<leader>ld', vim.diagnostic.open_float)

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local opts = {
			buffer = args.buf
		}

		keymap.set('n', '<leader>d', vim.lsp.buf.hover, opts)
		keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
		keymap.set('n', '<leader>a', vim.lsp.buf.code_action, opts)
	end
})
