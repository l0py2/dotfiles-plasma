return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-nvim-lsp-signature-help',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path'
	},
	config = function()
		local cmp = require('cmp')

		cmp.setup({
			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end
			},
			sources = {
				{ name = 'nvim_lsp' },
				{ name = 'nvim_lsp_signature_help' },
				{ name = 'path' },
				{ name = 'buffer' },
				{ name = 'luasnip' }
			},
			mapping = cmp.mapping.preset.insert({
				['C-n'] = cmp.mapping.select_next_item({ count = 1 }),
				['C-p'] = cmp.mapping.select_prev_item({ count = 1 }),
				['C-Space'] = cmp.mapping.confirm()
			})
		})

		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		require('mason-lspconfig').setup_handlers({
			function(server_name)
				require('lspconfig')[server_name].setup({
					capabilities = capabilities
				})
			end
		})
	end
}
