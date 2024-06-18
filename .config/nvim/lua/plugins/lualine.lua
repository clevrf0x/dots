-- TODO: Implement both statusline and tabline

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = { theme = 'gruvbox' }
    })
  end
}
