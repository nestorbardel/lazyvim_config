return {
	{ "EdenEast/nightfox.nvim" },
	{
		"navarasu/onedark.nvim",
		config = function()
			-- Lua
			require("onedark").setup({
				-- Main options --
				style = "darker", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
				transparent = false, -- Show/hide background
				term_colors = true, -- Change terminal color as per the selected theme style
				ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
				cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

				-- toggle theme style ---
				toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
				toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

				-- Change code style ---
				-- Options are italic, bold, underline, none
				-- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
				code_style = {
					comments = "italic",
					keywords = "bold",
					functions = "bold",
					strings = "none",
					variables = "bold",
				},

				-- Lualine options --
				lualine = {
					transparent = false, -- lualine center bar transparency
				},

				-- Custom Highlights --
				colors = {}, -- Override default colors
				highlights = {}, -- Override highlight groups
				colors = {
					qtt_yellow = "#E5C07B",
					qtt_gray = "#ABB2BF",
                    qtt_violet = "#C678DD",
				},
				highlights = {
					["@punctuation.delimiter"] = { fg = "$qtt_gray", fmt = "bold"},
					["@punctuation.bracket"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    ["@punctuation.braces"] = { fg = "$qtt_violet", fmt = 'bold' },
                    -- ["@punctuation.operator"] = { fg = "$qtt_gray", fmt = 'bold' },
                    -- ["@punctuation.separator"] = { fg = "$qtt_gray", fmt = 'bold' },
                    -- ["@punctuation.accessor"] = { fg = "$qtt_gray", fmt = 'bold' },
                    -- ["@punctuation.other"] = { fg = "$qtt_gray", fmt = 'bold' },
                    -- ["@constant"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.other"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.character"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.character.escape"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.numeric"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.boolean"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.null"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.other"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.regexp"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.symbol"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.key"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.key.special"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@constant.other"] = { fg = "$qtt_yellow", fmt = 'bold' },
                    -- ["@variable"] = { fg = "$qtt_gray", fmt = 'bold' },
                    -- ["@variable.other"] = { fg = "$qtt_gray", fmt = 'bold' },
                    -- ["@variable.parameter"] = { fg = "$qtt_gray", fmt = 'bold' },
                    -- ["@variable.language"] = { fg = "$qtt_gray", fmt = 'bold' },
                    -- ["@variable.language.special"] = { fg = "$qtt_gray", fmt = 'bold' },
				},

				-- Plugins Config --
				diagnostics = {
					darker = true, -- darker colors for diagnostic
					undercurl = true, -- use undercurl instead of underline for diagnostics
					background = true, -- use background color for virtual text
				},
			})
		end,
	},
	{
		"eldritch-theme/eldritch.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("eldritch").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				palette = "darker", -- Available options: "default" (standard palette), "darker" (darker variant)
				transparent = false, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = true },
					keywords = { italic = true },
					functions = { bold = true },
					variables = { bold = true },
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
				sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
				hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
				dim_inactive = false, -- dims inactive windows, transparent must be false for this to work
				lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

				--- You can override specific color groups to use other groups or a hex color
				--- function will be called with a ColorScheme table
				---@param colors ColorScheme
				on_colors = function(colors) end,

				--- You can override specific highlights to use other groups or a hex color
				--- function will be called with a Highlights and ColorScheme table
				---@param highlights Highlights
				---@param colors ColorScheme
				on_highlights = function(highlights, colors) end,
			})
		end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				-- Set light or dark variant
				variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`

				-- Enable transparent background
				transparent = true,

				-- Reduce the overall saturation of colours for a more muted look
				saturation = 1,
			}) -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)
		end,
	},
	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			require("bluloco").setup({
				style = "dark", -- "auto" | "dark" | "light"
				transparent = true,
				italics = false,
				terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
				guicursor = true,
			})

			vim.opt.termguicolors = true
			-- vim.cmd("colorscheme bluloco")
			-- your optional config goes here, see below.
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			-- colorscheme = "nightfox"
			-- colorscheme = "eldritch",
			-- colorscheme = "cyberdream",
			-- colorscheme = "bluloco",
			colorscheme = "onedark",
		},
	},
}
