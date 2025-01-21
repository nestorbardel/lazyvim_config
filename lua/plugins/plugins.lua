return {
	{
		"Exafunction/codeium.nvim",
		cmd = "Codeium",
		event = "InsertEnter",
		build = ":Codeium Auth",
		opts = {
			enable_cmp_source = vim.g.ai_cmp,
			virtual_text = {
				-- enabled = not vim.g.ai_cmp,
				enabled = false,
				idle_delay = 50,
				key_bindings = {
					accept = false, -- handled by nvim-cmp / blink.cmp
					next = "<M-]>",
					prev = "<M-[>",
				},
			},
		},
	},
	{
		"hrsh7th/nvim-cmp",
		optional = true,
		dependencies = { "codeium.nvim" },
		opts = function(_, opts)
			table.insert(opts.sources, 1, {
				name = "codeium",
				group_index = 1,
				priority = 100,
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		optional = true,
		event = "VeryLazy",
		opts = function(_, opts)
			table.insert(opts.sections.lualine_x, 2, LazyVim.lualine.cmp_source("codeium"))
		end,
	},
	{
		"saghen/blink.cmp",
		optional = true,
		dependencies = { "codeium.nvim", "saghen/blink.compat" },
		opts = {
			sources = {
				compat = { "codeium" },
				providers = {
					codeium = {
						kind = "Codeium",
						score_offset = 100,
						async = true,
					},
				},
			},
		},
	},
}
