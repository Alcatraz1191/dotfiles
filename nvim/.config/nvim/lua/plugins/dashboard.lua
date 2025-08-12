return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'doom',
      config = {
        header = {
          "                                                                              ",
          "=================     ===============     ===============   ========  ========",
          "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
          "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
          "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
          "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
          "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
          "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
          "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
          "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
          "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
          "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
          "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
          "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
          "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
          "||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||",
          "||.=='    _-'                                                     `' |  /==.||",
          "=='    _-'                        N E O V I M                         \\/   `==",
          "\\   _-'                                                                `-_   /",
          " `''                                                                      ``'  ",
        },
        center = {
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = 'Find File           ',
            desc_hl = 'String',
            key = 'Ctrl-P',
            key_hl = 'Number',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'lua print(2)'
          },
          {
            icon = ' ',
            desc = 'Recent Files',
            key = 'SPC',
            keymap = 'SPC',
            key_format = ' %s', -- remove default surrounding `[]`
            action = 'lua print(3)'
          },
          {
            icon = ' ',
            desc = 'File Explorer',
            key = 'e',
            keymap = 'SPC',
            key_format = ' %s',
            action = 'lua print(3)'
          },
          {
            icon = ' ',
            desc = 'Live Grep',
            key = 'f g',
            keymap = 'SPC',
            key_format = ' %s',
            action = 'lua print(3)'
          }
        },
        footer = {""},
        vertical_center = true,
      }
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
