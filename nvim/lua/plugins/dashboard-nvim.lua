return { 
  "glepnir/dashboard-nvim", 
  event = "VimEnter",
  opts = {
    theme = 'doom',
    config = {
      header = {
        "                           ",
        "                           ",
        "                           ",
        "                           ",
        "                           ",
        "                           ",
        "⠀⠀⢀⣀⠤⠿⢤⢖⡆                  ",
        "⡔⢩⠂⠀⠒⠗⠈⠀⠉⠢⠄⣀⠠⠤⠄⠒⢖⡒⢒⠂⠤⢄     ",
        "⠇⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠈⠀⠈⠈⡨⢀⠡⡪⠢⡀  ",
        "⠈⠒⠀⠤⠤⣄⡆⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠢⠀⢕⠱  ",
        "⠀⠀⠀⠀⠀⠈⢳⣐⡐⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠁⠇ ",
        "⠀⠀⠀⠀⠀⠀⠀⠑⢤⢁⠀⠆⠀⠀⠀⠀⠀⢀⢰⠀⠀⠀⡀⢄⡜  ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠘⡦⠄⡷⠢⠤⠤⠤⠤⢬⢈⡇⢠⣈⣰⠎   ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣃⢸⡇⠀⠀⠀⠀⠀⠈⢪⢀⣺⡅⢈⠆   ",
        "⠀⠀⠀⠀⠀⠀⠀⠶⡿⠤⠚⠁⠀⠀⠀⢀⣠⡤⢺⣥⠟⢡⠃    ",
        "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉         ",
        "                           ",
        "                           ",
      },

      center = {
        {
          desc = "  New file               ",
          action = "enew",
        },
        {
          desc = "󰈞  Find  File             ",
          action = "",
        },
        {
          desc = "󰈞  Find  word             ",
          action = "",
        },
        {
          desc = "󰩈  Update plugins         ",
          action = ":Lazy update",
        },
        {
          desc = "󰩈  Settings               ",
          action = "",
        },
        {
          desc = "󰩈  Quit                   ",
          action = "qa",
        },
      }

    }
  },

  dependencies = { {'nvim-tree/nvim-web-devicons'}}
} 


