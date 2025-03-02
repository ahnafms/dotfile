return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[ 
⢀⠠⠀⠄⠠⠀⠂⠈⢀⠠⢱⢕⢧⠝⢀⡐⡳⠁⣸⢪⡺⡪⣝⢮⢺⢸⢜⠽⡔⡦⡍⡜⡘⠮⢪⡣⣳⢹⢜⢎⢧⠳⣕⢝⢮⡪⢧⡛⡼⡱⢵⡹⢜⢎⢧⢝⢮⢹⢜⣕⠵⡝⡖⡥⢕⡩⡊⠧⢳⢕
⠀⠀⠄⠐⠀⠐⠈⠀⠄⢌⢗⡝⡮⠁⡲⡁⡁⢰⡣⠑⣨⠌⢪⢎⡗⡭⡳⣹⢪⢣⢏⢮⢝⡜⡖⡬⣌⣑⠍⠗⡭⡝⣜⡕⡧⡝⢮⡪⢧⢻⢸⡪⡳⣙⢮⡪⢮⡣⡳⡜⡵⣙⢮⡪⡳⣱⢹⢜⡲⡬
⠀⠂⠐⠀⢁⠀⡁⠐⠨⣜⠵⣕⡳⣔⢝⢖⢀⢧⠃⡨⡮⠐⡸⣕⢵⢹⡚⠊⣊⠳⡹⣪⢺⡸⣪⢳⢪⡪⢮⡳⣢⠥⣅⡓⠕⢝⢕⡝⢮⡪⣣⢝⢮⡪⣣⡫⡲⣹⢸⡪⡺⣜⢕⣕⢽⢸⡱⡕⠧⣝
⠀⠐⠈⠀⠄⠀⠄⠨⡸⣜⠵⣕⢇⡧⡫⡮⡺⣜⢥⢌⡢⢬⡣⢧⣓⢧⠁⡸⡜⠀⣝⠂⡁⢇⠣⡳⣣⡫⣣⢳⢱⢝⢦⡫⣝⡔⡦⣍⣑⡙⠼⢜⢕⢞⡲⣙⢮⢪⡣⣇⢗⣕⢕⣎⠮⣣⠳⣍⢏⢮
⠀⠐⠈⠀⠐⠀⠂⣡⢳⡱⡽⡸⣕⣕⢏⢮⢳⡱⡝⡮⡪⣇⢏⢮⡪⡲⣀⠫⢀⢜⡜⢀⢎⠃⡰⡹⠀⣔⠅⢝⢵⡹⣪⡪⣲⢹⡸⡜⣆⢏⡳⣒⢬⢌⢕⢙⠜⣎⢞⢜⠼⣌⢗⢜⡝⡬⡳⣱⢱⢵
⠀⠠⠁⠈⡀⠁⠌⣜⢮⣪⠚⢵⢕⢮⢝⢎⢧⡳⣹⢪⢝⢼⢱⢣⣫⢺⢜⢝⢼⡱⡤⡸⣊⢀⢧⠃⢠⣑⢀⢎⢧⢝⡲⡙⢊⡊⠺⣜⡪⡮⡺⡜⡵⣍⢗⢵⡱⢆⢎⣌⢝⠸⠸⣕⠵⣝⢜⢮⡱⣕
⠀⠂⢀⠁⠀⠄⡽⡸⡪⡎⢀⢧⠃⡸⡜⠑⡳⠕⣇⢯⡓⢓⢭⢣⢇⢗⢭⢳⢕⡝⡼⡹⡜⡕⡧⡣⡅⡕⡳⡹⡪⡺⡪⠁⡔⡭⡳⡕⣕⢌⠑⢭⢺⢸⢜⢮⡪⣳⢱⢎⢞⢎⡳⢤⡱⡨⡚⠪⢪⢲
⠀⠐⠀⠠⠈⢔⡳⡭⡳⡁⢜⠕⢀⢧⠃⣰⡪⠀⣗⠥⠂⡘⣎⢇⡰⡹⠑⡹⡜⣚⢮⣓⢵⡹⣪⢺⡪⣝⠮⣪⡫⡮⡳⣐⠹⢜⢕⠁⡔⡅⢈⢮⠁⡠⣅⢥⢳⠱⠱⣣⡫⢮⡚⣕⢕⢧⢫⢣⣓⢴
⠀⠄⠁⠠⠨⣺⡸⡎⡗⡽⣸⢢⢎⢇⡠⡳⠀⡜⣎⠇⢰⡹⡌⢀⢮⠃⢰⡹⠀⡜⡦⡳⡱⣝⢜⣎⢞⣜⢝⣜⢮⣪⠳⣕⢝⢼⡱⣅⢕⡀⣜⠎⢠⢺⡸⣪⠁⡰⡕⠀⣎⠧⠙⠜⢜⢎⢗⠵⡕⢧
⠀⠄⠈⠠⡹⣜⢼⢪⡫⡺⣜⢵⢝⢵⡹⡪⣖⢽⢸⣀⢪⡺⠀⣜⠅⢄⢧⠃⢰⢝⢮⢺⡱⠣⡳⣪⢳⢜⢵⡱⡕⡮⡫⡎⡗⡵⡕⡮⡣⣳⡱⣣⡪⢮⣚⢆⠐⢖⡤⢜⡜⡆⠈⡫⣪⢣⡫⣣⡫⣣
⠀⡀⠁⢕⡝⣎⢗⢧⡫⣞⣜⢮⢎⢧⡫⡺⡜⣎⢧⢳⢕⡵⡲⡱⣁⡜⡆⢐⢧⡫⡺⣜⠊⢠⠳⠁⡸⡪⠓⠵⠝⣎⢗⢵⡹⣪⣚⢮⡹⣢⡫⡲⣍⢧⡣⣳⡹⡢⡬⡺⡘⠪⢁⢸⡸⡱⣙⠦⣝⢲
⠀⠀⢌⢮⡳⢵⠁⡱⡙⡲⡱⡠⡭⡣⣏⡳⡝⣜⢎⡗⣕⢧⢫⢝⢎⡞⣎⢎⢧⣓⢧⢳⣈⠪⠃⢨⢝⠀⡜⡇⠨⣪⠉⡸⡜⠖⣕⠇⢉⢖⡝⡮⡪⡖⣝⡲⣕⢳⡹⡸⣪⢫⢎⢧⢳⢹⢜⠵⣕⢳
⠀⠨⣸⢕⣝⠕⢠⢳⡹⡪⠂⡸⡜⢉⡒⠣⣏⠆⢱⡹⡪⡣⣏⢮⡣⡏⡮⡎⣗⣜⠵⡅⡕⣉⢤⢫⠥⡐⠝⠀⣎⠇⢠⢳⠁⡸⡜⡖⣝⠜⢪⠪⣝⢮⢪⡺⡬⡳⢭⢺⢬⠳⣕⢳⡹⡸⣜⠵⣕⡳
⠀⢕⣕⢧⣓⢥⡪⡳⡭⡃⢨⢞⠀⣎⢮⡫⡖⢀⢣⠙⢮⡹⣪⡺⢜⡎⡧⣫⢪⢎⡳⡭⡳⣕⢝⣎⢯⢪⢮⢫⡺⣐⣘⠁⢄⢗⡭⡳⡕⠀⡦⡳⣜⠜⢁⡓⢭⢪⢇⡗⣵⢹⢬⡓⣎⢗⡕⡝⡦⡫
⢨⢣⡳⢵⢕⢧⣫⢺⣜⢖⢭⡣⣂⠓⢵⡹⠀⣜⠎⢀⢧⡫⡲⡍⠡⢝⠚⡼⣱⢳⡹⡜⣕⢮⣓⢎⡗⡽⡜⡧⣫⢺⢜⠽⣜⠵⣝⢼⠀⡜⣎⢗⠕⠀⠣⠃⢠⡻⡜⡎⣮⢚⢦⢫⢎⢇⢧⡫⣎⢯
⡸⡱⣝⢵⢝⢵⡪⡳⣪⢳⢵⡹⣜⢝⢵⡱⣔⣓⣀⢝⠎⢎⢗⠁⡜⡜⢀⣝⠂⡁⣋⡪⡣⢧⢳⢕⣝⢞⣜⢧⡫⣳⢹⡹⣜⢵⢕⡳⢭⢳⢕⡳⣑⡘⠝⢜⢎⡞⡼⣙⢦⢻⢸⡱⣣⡫⡮⡺⣜⠼
⡹⡕⡇⡁⣍⢑⢭⡫⣎⢗⢵⡹⡬⡫⡮⣺⢸⢜⢼⡱⡡⣎⠇⢐⢙⢀⢜⠆⢠⢳⢕⢧⠃⢱⡐⠑⣕⠗⠐⡰⣝⢜⠎⡳⣕⡳⡝⡼⣕⡳⣕⠽⣜⠼⢭⠺⡜⣎⢮⡳⣱⢝⢮⡚⡖⡝⡼⡱⢵⡹
⢕⢯⠂⡜⣎⠇⢸⠺⡜⠵⡣⣏⢮⡫⡺⣜⢵⢝⢵⢹⡪⣎⢖⡭⡳⢭⢳⢥⢪⢮⢝⢆⢠⢥⣁⢜⣎⠇⢐⢮⣪⠁⡐⣝⢼⢸⢎⢗⢮⡪⣎⡳⣕⢝⢵⡹⣪⡺⢼⢜⢮⡚⣖⢝⢮⡹⡪⣝⢵⢹
⢜⢅⢰⢹⠜⢀⢗⠅⡰⡕⡈⡮⣣⡋⠳⢕⡳⣍⢗⣕⠗⣕⡳⡝⣎⢗⡝⡮⡝⡮⣚⡖⡦⡬⣘⢮⡪⢀⣝⢮⡊⢀⣞⡜⠀⣜⠎⢉⢮⡪⣖⢝⢼⡸⣕⡕⡧⣓⢧⡫⡲⣝⢲⣙⢮⡚⡮⣚⢼⢹
⡹⡪⣖⠦⣎⢗⡭⠠⢖⣔⢴⡙⢂⡋⡃⢡⡳⠑⣑⠑⡀⡧⡳⣝⠼⣕⡝⡮⣎⢗⣕⢗⢝⢼⡪⡳⣹⠴⣜⢎⣆⢘⣖⢅⠸⡜⠀⣎⢗⢭⡪⡣⠃⣃⠣⣓⢧⣓⢧⡫⣣⢳⡱⣕⢧⢝⢮⡪⣳⢹
⣈⡑⡑⠏⢮⢳⡹⡕⣇⣆⢗⣅⠸⡘⢀⢮⠃⢸⢜⠄⣚⢮⡳⢵⢝⠎⢪⡳⡅⠳⣕⢃⢮⢳⢭⡫⣎⢏⢮⡺⢬⡳⣊⠓⠕⣐⢸⡸⢵⡹⡪⢁⢸⠜⠀⡮⡂⢈⢆⢫⢺⢜⢮⣚⢮⡪⡣⣏⢮⢳
⣜⡺⣜⢖⢴⡠⡑⡙⠪⠪⡳⣕⠯⡮⡪⣞⢄⡫⡀⢢⡳⡣⣏⢮⡳⢽⢜⢮⡒⢘⡌⡴⡫⡳⣕⡳⢵⡹⣕⡝⡵⡹⡪⣝⢵⢕⡳⣍⢗⡝⡮⣀⡓⢁⢜⡎⢀⢧⢫⢮⢳⢭⢳⢪⡣⣏⡳⣕⡳⡝
⡕⢙⠮⡝⡮⡚⣹⢜⠶⣱⢄⣂⠍⡊⠏⠮⡳⣕⢗⡳⡭⡳⣕⢗⣉⢱⢝⠵⠐⡰⢰⢕⣏⢗⢵⡹⢵⡹⡪⣎⢗⣝⢵⢝⢮⡣⡳⡝⡮⣎⢗⢵⡹⣍⢗⢦⢸⢜⢵⢝⢵⢭⢳⢕⡳⣕⡳⡕⡧⣫
⠀⡞⡀⡯⡊⣀⣳⠱⣜⢮⡳⣳⢝⢮⡲⡥⣐⣈⠑⠓⠝⠮⣎⢗⣕⢏⡃⡅⡧⢃⢮⡳⣪⡳⡣⣏⢗⣝⢵⢝⢮⢎⢧⣫⢺⢜⡳⣝⢮⣪⢳⢝⡜⣎⢗⣕⢏⢮⢳⢭⢳⢕⢯⢮⡫⢮⡺⣪⡳⢵
⢨⣃⢜⡞⢀⣞⠆⢰⢃⢡⠍⢮⠫⡳⡝⣮⡳⡳⣝⢵⡪⡔⣄⢑⠑⠝⠮⡳⡍⣜⢮⡺⡪⣎⢗⡳⣳⡱⡳⡝⡮⡝⡮⣪⢳⢝⡺⣜⢮⢪⡳⣕⡝⣎⢗⢮⡹⣪⡳⡭⡳⡭⡳⢵⡹⢵⡹⣪⡺⢵
⠓⢮⢳⢝⢦⡳⣈⣞⠠⡓⢠⠗⢠⢮⠂⡳⢙⡑⣝⠮⣎⢯⢎⡗⣝⢖⢴⣐⣈⢑⠱⠹⡪⣇⢯⡺⡪⣎⢗⣝⡺⣜⢵⢕⢗⣝⠮⣎⢞⣕⢗⢵⡹⣪⡳⢵⡹⣲⡹⣪⢝⢮⡫⣳⡹⡵⡹⡮⡺⢵
⠀⠄⠈⠌⠃⠏⠷⢵⣫⢮⢯⡢⣝⠇⢰⣫⢆⢘⡮⡻⡼⣕⢗⣝⢮⡫⡮⡺⣜⢵⢕⢦⡢⣄⠅⠍⠳⠭⡳⣕⡳⣕⢏⡮⡳⣎⠯⣎⢗⢎⡗⡧⡫⣖⡝⣵⢹⡢⣏⢮⢝⢮⡺⡺⣜⢞⣝⢮⣫⢳
⠀⠀⠂⡀⠂⠀⠂⠐⠈⢉⠋⠯⢯⣻⣽⣢⢵⢼⣺⢝⣞⢮⡳⣕⢗⡝⡮⡫⡮⣳⢹⢕⢗⣕⢯⢝⢖⣔⣄⣂⢉⢊⠳⢭⢳⢵⡹⣪⡳⡣⡯⣎⢯⡲⡝⡮⡳⢵⡹⣪⢝⢵⢝⢞⣎⠷⣕⢗⣕⢯
⢀⠈⡀⠠⠀⢁⠈⢀⠈⢀⠀⠂⠠⠐⠈⢙⠹⠳⢽⣕⢷⢕⢯⡪⣗⡝⡵⣫⢳⢭⢳⢝⢵⡣⡷⣝⢵⢵⡱⣵⢹⡲⡢⡦⣠⠡⠙⠒⢝⢮⡣⣗⣕⢗⣝⢮⡫⣣⢏⡮⣫⢳⢝⢵⢕⢯⢮⡳⣕⣗
        ]],
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
      sections = {
        { section = "header" },
        { section = "keys", gap = 1 },
      },
    },
    scroll = { enabled = false },
  },
}
