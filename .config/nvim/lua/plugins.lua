local lazy_path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazy_path) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'--branch=stable',
		'https://github.com/folke/lazy.nvim.git',
		lazy_path
	})
end

vim.opt.rtp:prepend(lazy_path)

require('lazy').setup({
	spec = {
		{ import = 'plugins/treesitter' },
		{ import = 'plugins/lspconfig' },
		{ import = 'plugins/mason' },
		{ import = 'plugins/luasnip' },
		{ import = 'plugins/cmp' },
		{ import = 'plugins/telescope' },
		{ import = 'plugins/lualine' },
		{ import = 'plugins/guess-indent' },
		{ import = 'plugins/wiki' }
	},
	checker = { enabled = true }
})
