local M = {
	"williamboman/mason.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	require("mason").setup()
	require("mason-lspconfig").setup()
	local lspconfig = require("lspconfig")
	require("mason-lspconfig").setup_handlers({
		function(server_name)
			local opts = {}
			lspconfig[server_name].setup(opts)
		end,
	})
end

return M
