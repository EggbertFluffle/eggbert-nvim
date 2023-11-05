require('nvim-treesitter.install').compilers = { "gcc", "clang" }
require('nvim-treesitter.configs').setup({
	highlight = {
		enable = true,
	}
})
