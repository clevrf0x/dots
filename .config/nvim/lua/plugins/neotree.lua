-- Disabled in favour of Oil.nvim
--
return {}


-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   branch = "v3.x",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--     "MunifTanjim/nui.nvim",
--     "3rd/image.nvim",              -- Optional image support in preview window: See `# Preview Mode` for more information
--   },
--   config = function()
--     require("neo-tree").setup({
--       close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
--       popup_border_style = "rounded",
--       enable_git_status = true,
--       enable_diagnostics = true,
--       open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
--       sort_case_insensitive = true,                                      -- used when sorting files and directories in the tree,
--       window = {
--         position = "left",
--         width = 40,
--         mapping_options = {
--           noremap = true,
--           nowait = true,
--         },
--       },
--     })
--
--     vim.keymap.set('n', '<C-n>', ':Neotree focus<CR>')
--   end,
-- }
