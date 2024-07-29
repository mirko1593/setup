return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	event = "VeryLazy",
	keys = {},
	-- -- Keymaps
	-- vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
	-- vim.keymap.set('n', 'gd', ':Telescope lsp_definitions<CR>')
	-- vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
	-- vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
	-- vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
	-- vim.keymap.set('n', '<Leader>lr', ':LspRestart<CR>', { silent = true })
	-- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
	-- vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

		require("lspconfig").lua_ls.setup({
			-- update capabilities with enhanced client capabilities
			capabilities = capabilities,

			on_init = function(client)
				local path = client.workspace_folders[1].name
				if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
					return
				end

				client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
					runtime = {
						-- Tell the language server which version of Lua you're using
						-- (most likely LuaJIT in the case of Neovim)
						version = "LuaJIT",
					},
					-- Make the server aware of Neovim runtime files
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTIME,
							"${3rd}/luv/library",
							-- Depending on the usage, you might want to add additional paths here.
							-- "${3rd}/busted/library",
						},
						-- or pull in all of 'runtimepath'. NOTE: this is a lot slower
						-- library = vim.api.nvim_get_runtime_file("", true)
					},
				})
			end,

			settings = {
				Lua = {},
			},
		})
	end,
}
