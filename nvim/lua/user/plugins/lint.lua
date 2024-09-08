return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			-- already put a global luacheckrc file in home directory: ~/.luacheckrc
			-- through luarocks
			lua = { "luacheck" },

			-- pip3 install ruff
			python = { "ruff" },

			-- gem install rubocop
			ruby = { "rubocop" },

			-- gem install erb_lint
			eruby = { "erb_lint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
