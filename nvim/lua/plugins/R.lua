return {
	{
		"R-nvim/R.nvim",
    lazy = false,
    version = "0.99.1"
	},
	{
		"R-nvim/cmp-r",
		{
			"hrsh7th/nvim-cmp",
			config = function()
				require("cmp").setup({ sources = { { name = "cmp_r" } } })
				require("cmp_r").setup({})
			end,
		},
	},
}
