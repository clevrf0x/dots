return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300

		local wk = require("which-key")
		wk.register({

			-- Telescope Keybindings
			["<leader>f"] = { name = "Telescope" },
			["<leader>ff"] = "Find Files",
			["<leader>fr"] = "Open Recent Files",
			["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
			["<leader>fg"] = "Live Grep Document",
			["<leader>fG"] = "Live Grep Workspace",
			["<leader>fS"] = "Search Symbol Workspace",
			["<leader>fb"] = "Active Buffers",
			["<leader>fh"] = "Vim Help Menu",

			-- Git Keybindings
			["<leader>g"] = { name = "Git" },
			["<leader>h"] = { name = "Git" },
			["<leader>gg"] = "Toggle Lazygit",
			["<leader>gs"] = "Git Status",
			["<leader>gb"] = "Git Branches",
			["<leader>gc"] = "Git Commits",

			["<leader>hs"] = "Git stage hunk",
			["<leader>hr"] = "Git reset hunk",
			["<leader>hS"] = "Git stage document",
			["<leader>hR"] = "Git reset document",
			["<leader>hd"] = "Git show diff",
			["<leader>hb"] = "Toggle current line blame",
			["<leader>tb"] = "Toggle git blame",
			["<leader>tD"] = "Git show deleted",

			-- LSP Keybindings
			-- ["<leader>D"] = "Jump to type definition",
			["<leader>wa"] = "Add workspace directory",
			["<leader>wr"] = "Remove workspace directory",
			["<leader>wl"] = "List workspace directory",
			["<leader>rn"] = "Rename symbol (LSP)",
			["<leader>rr"] = "Refactor Menu",
			["<leader>ca"] = "Show code actions",
			-- ["<leader>f"] = "Format document",

			-- Trouble Keybindings
			["<leader>x"] = { name = "Trouble" },
			["<leader>xx"] = "Toggle workspace errors",
			["<leader>xd"] = "Toggle document errors",
			["<leader>xw"] = "Toggle workspace errors",
			["<leader>xq"] = "Toggle quickfix list",
			["<leader>xl"] = "Toggle location list",

			-- Bufferline Keybindings
			["<leader>b"] = { name = "Bufferline" },
			["<leader>b1"] = "Switch to buffer 1",
			["<leader>b2"] = "Switch to buffer 2",
			["<leader>b3"] = "Switch to buffer 3",
			["<leader>b4"] = "Switch to buffer 4",
			["<leader>b5"] = "Switch to buffer 5",
			["<leader>b6"] = "Switch to buffer 6",
			["<leader>b7"] = "Switch to buffer 7",
			["<leader>b8"] = "Switch to buffer 8",
			["<leader>b9"] = "Switch to buffer 9",
			["<leader>b$"] = "Switch to last buffer",

			-- Misc names
			["<leader>r"] = { name = "LSP" },
			["<leader>c"] = { name = "LSP" },
			["<leader>w"] = { name = "LSP" },
			["<leader>t"] = { name = "Git" },
		})
	end,
	opts = {},
}
