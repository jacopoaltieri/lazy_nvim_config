return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local custom_colors = {
				bg = "#303446",
				bg_dark = "#292C3C",
				bg_highlight = "#44475A",
				bg_popup = "#292C3C",
				bg_search = "#BD93F9",
				bg_sidebar = "#292C3C",
				bg_statusline = "#292C3C",
				bg_visual = "#6272A4",
				border = "#6272A4",
				fg = "#F8F8F2",
				fg_dark = "#E6E6E6",
				fg_float = "#F8F8F2",
				fg_gutter = "#4B5263",
				fg_sidebar = "#E6E6E6",
			}

			require("catppuccin").setup({
				flavour = "frappe",
				custom_highlights = function(colors)
					return {
						Normal = { bg = custom_colors.bg, fg = custom_colors.fg },
						NormalFloat = { bg = custom_colors.bg_popup, fg = custom_colors.fg_float },
						Visual = { bg = custom_colors.bg_visual },
						StatusLine = { bg = custom_colors.bg_statusline, fg = custom_colors.fg },
						StatusLineNC = { bg = custom_colors.bg_statusline, fg = custom_colors.fg_gutter },
						VertSplit = { fg = custom_colors.border },
						LineNr = { fg = custom_colors.fg_gutter },
						CursorLineNr = { fg = custom_colors.fg },
						-- Add more highlights as needed
					}
				end,
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin-frappe]])
		end,
	},
}
