return {
	"SirVer/ultisnips",
	event = "InsertEnter",
	config = function()
		-- Disable snipmate plugins to avoid duplicate snippets
		vim.g.UltiSnipsEnableSnipMate = 0
		vim.g.UltiSnipsRemoveSelectModeMappings = 0
		vim.g.UltiSnipsExpandTrigger = "<Tab>"
		vim.g.UltiSnipsJumpForwardTrigger = "<Tab>"
		vim.g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
	end,
}
