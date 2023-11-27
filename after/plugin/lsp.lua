local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

cmp.setup({
	mapping={
		['<M-k>'] = cmp.mapping.select_prev_item(),
		['<M-j>'] = cmp.mapping.select_next_item(),

		['<Tab>'] = cmp.mapping.confirm({select = true}),
	}
})

lsp.setup()
