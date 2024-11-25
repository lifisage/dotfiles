local M = {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
}

function M.config()
	require("nvim-autopairs").setup({
		disable_filetype = { "TelescopePrompt", "vim" },
	})
end

return M
