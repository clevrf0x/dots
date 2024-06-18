return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"jonarrien/telescope-cmdline.nvim",
		},
		keys = {
			{ ":", "<cmd>Telescope cmdline<cr>", desc = "Cmdline" },
			{ "<leader><leader>", "<cmd>Telescope cmdline<cr>", desc = "Cmdline" },
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("cmdline")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fG", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fg", builtin.current_buffer_fuzzy_find, {})
			vim.keymap.set("n", "<leader>fS", builtin.grep_string, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})

			vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
			vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
}
