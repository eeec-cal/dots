local cmp = require('cmp')

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-n>'] = cmp.mapping.scroll_docs(4),
		['<C-p>'] = cmp.mapping.scroll_docs(-4),
		['<C-o>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
	}, {
		{ name = 'buffer' },
	}),
})
