return {
	'lervag/wiki.vim',
	init = function()
		vim.g.vimwiki_list = {{
			path = '~/.local/share/wiki',
			syntax = 'markdown',
			ext = 'md'
		}}

		vim.g.wiki_root = '~/.local/share/wiki'
	end
}
