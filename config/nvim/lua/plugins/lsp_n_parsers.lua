return {
	-- add pyright to lspconfig
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				pyright = {},
				rust_analyzer = {},
			},
		},
	},

	-- add treesitter parsers
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"rust",
				"yaml",
			},
		},
	},

	-- add any tools you want to have installed below
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"black",
				"mypy",
				"pyright",
				"ruff",
				"shellcheck",
				"shfmt",
			},
		},
	},
}
