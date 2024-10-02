return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			max_concurrent_installers = 8,
			ui = {
				border = "rounded",
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({

			-- list of servers for mason to install
			ensure_installed = {
				"tailwindcss",
				"ts_ls",
				"gopls",
				"pyright@1.1.377",
				"emmet_ls",
				"html",
				"lua_ls",
				"yamlls",
				"denols",
				"dockerls",
				"bashls",
				"jsonls",
				"cssls",
				--"sqlls",
				"ansiblels",
			},

			-- -- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})
	end,
}
