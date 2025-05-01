return {
  'Shatur/neovim-ayu',
  config = function ()
    require('ayu').setup({
      mirage = true,
      terminal = true,
      overrides = {
        LineNr = {fg = "gray"},
        CursorlineNr = {fg = '#f28799'},
      },
    })
    vim.cmd("colorscheme ayu-mirage")
  end
}
