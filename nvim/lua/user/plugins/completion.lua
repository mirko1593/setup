return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
	},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			mapping = {
				-- Super-Tab like mapping
				["<Tab>"] = cmp.mapping(function(fallback)
					-- print('tab...')
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			},
			sources = {
				{ name = "nvim_lsp" },
				-- { name = "nvim_lsp_signature_help" },
				-- { name = 'copilot' },
				{ name = "buffer", option = {
						get_bufnrs = function()
							return vim.api.nvim_list_bufs()
						end
				} },
				{ name = "path" },
			},
			experimental = {
				-- ghost_text = true,
			},
		})
	end,
}
