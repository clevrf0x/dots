return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    local bufferline = require('bufferline')
    bufferline.setup {
      options = {
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = true,
        --- count is an integer representing total count of errors
        --- level is a string "error" | "warning"
        --- this should return a string
        --- Don't get too fancy as this function will be executed a lot
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or ""
          return " " .. icon .. count
        end,

        always_show_bufferline = true,
        style_preset = {
          bufferline.style_preset.no_italic,
          bufferline.style_preset.minimal
        },
      }
    }

    -- Define the mappings
    local mappings = {
      { "<leader>b1", ":BufferLineGoToBuffer 1<CR>" },
      { "<leader>b2", ":BufferLineGoToBuffer 2<CR>" },
      { "<leader>b3", ":BufferLineGoToBuffer 3<CR>" },
      { "<leader>b4", ":BufferLineGoToBuffer 4<CR>" },
      { "<leader>b5", ":BufferLineGoToBuffer 5<CR>" },
      { "<leader>b6", ":BufferLineGoToBuffer 6<CR>" },
      { "<leader>b7", ":BufferLineGoToBuffer 7<CR>" },
      { "<leader>b8", ":BufferLineGoToBuffer 8<CR>" },
      { "<leader>b9", ":BufferLineGoToBuffer 9<CR>" },
      { "<leader>b$", ":BufferLineGoToBuffer -1<CR>" },
      { "[b",         ":BufferLineCycleNext<CR>" },
      { "b]",         ":BufferLineCyclePrev<CR>" }
    }

    -- Apply the mappings
    for _, map in ipairs(mappings) do
      vim.api.nvim_set_keymap('n', map[1], map[2], { silent = true })
    end
  end,
}
