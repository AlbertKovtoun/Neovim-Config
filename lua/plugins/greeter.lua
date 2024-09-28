return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      [[;;;;;;;;+++++++++++++;;;;;;;;;;;;;:::::::::::::;;;;;;;;;;;;;:]],
      [[;;;;;;;+++$+++++++++;;;;;;;;;;;;;:::::::::::::;;;;X;;;;;;;;::]],
      [[;;;;;;++++$.$++++++;;;;;;;;;;;;;:::::::::::::;;;$.$;;;;;;;:::]],
      [[;;;;;+++++$..:$+++;;;;;;;;;;;;;:::::::::::::;;$...$;;;;;;::::]],
      [[;;;;++++++$...:.$;;;;;;;;;;;;;:::::::::::::;$.....$;;;;;:::::]],
      [[;;;+++++++$.......Xx;;;;;;;;;::::::::::::+$.......$;;;:::::::]],
      [[;;++++++++$..........$;;;;;;:::::::::::$...:......$;;::::::::]],
      [[;+++++++++$:..:........$;;;::::::::::$.:..........$;:::::::::]],
      [[++++++++++$.....$$.......$:::::::::$.......$$.....$::::::::::]],
      [[++++++++++$....:$;;$.......$:::::$.......$;;$.....$::::::::::]],
      [[++++++++++$.....$;;;;$....:..:$........$;;;;$.....$::::::::::]],
      [[+++++++++;$.....$;;;;;:$+........:..;$;;;;;;$...:.$::::::::::]],
      [[++++++++;;$..:..$;;;;:::::$.:.....$;;;;;;;;;$.....$:::::::::;]],
      [[+++++++;;;$..:..$;;;::::$.......$;;;;;;;;;;;$.....$::::::::;;]],
      [[++++++;;;;$.....$;;::$:.......$:;;;;;;;;;;;;$.....$:::::::;;;]],
      [[+++++;;;;;$.....$;:$.......$;::;;;;;;;;;;;;;$.....$::::::;;;;]],
      [[++++;;;;;;$....:$$.......$::::;;;;;;;;;;;;;:$....:$:::::;;;;;]],
      [[+++;;;;;;;$..:.........$:::::;;;;;;;;;;;;;::$.....$::::;;;;;;]],
      [[++;;;;;;;;$.........$;::::::;;;;;;;;;;;;;:::$::...$:::;;;;;;;]],
      [[+;;;;;;;;;$.......$::::::::;;;;;;;;;;;;;::::$.....$::;;;;;;;;]],
      [[;;;;;;;;;;$.....$:::::::::;;;;;;;;;;;;::::::$.....$:;;;;;;;;;]],
      [[;;;;;;;;;;$..$:::::::::::;;;;;;;;;;;;:::::::$.....$;;;;;;;;;;]],
      [[;;;;;;;;;;$$::::::::::::;;;;;;;;;;;;::::::::$.:..:$;;;;;;;;;;]],
      [[;;;;;;;;;:::::::::::::;;;;;;;;;;;;;:::::::::::::;;;;;;;;;;;;;]],
    }
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰮗  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("s", "  Settings", ":e $MYVIMRC<CR>"),
      dashboard.button("q", "󰩈  Quit", ":qa<CR>"),
    }

    local quotes = {
      "If debugging is the process of removing bugs, then programming must be the process of putting them in. – Edsger Dijkstra",
      "There are only two kinds of programming languages: those people always bitch about and those nobody uses. – Bjarne Stroustrup",
      "I don't care if it works on your machine! We are not shipping your machine! – Vidiu Platon",
      "It's not a bug – it's an undocumented feature. – Anonymous",
      "Programmer: A machine that turns coffee into code. – Anonymous",
      "Walking on water and developing software from a specification are easy if both are frozen. – Edward V. Berard",
      "Measuring programming progress by lines of code is like measuring aircraft building progress by weight. – Bill Gates",
      "Software and cathedrals are much the same – first we build them, then we pray. – Anonymous",
      "There are 10 types of people in the world: those who understand binary, and those who don’t. – Anonymous",
      "Weeks of coding can save you hours of planning. – Anonymous",
      "To err is human, but to really foul things up you need a computer. – Paul R. Ehrlich",
      "In order to understand recursion, one must first understand recursion. – Anonymous",
      "I have not failed. I’ve just found 10,000 ways that won’t work. – Thomas Edison",
      "Real programmers don't comment their code. If it was hard to write, it should be hard to understand. – Anonymous",
      "Debugging is like being the detective in a crime movie where you are also the murderer. – Filipe Fortes",
    }

    math.randomseed(os.time())
    local random_quote = quotes[math.random(#quotes)]

    dashboard.section.footer.val = random_quote

    alpha.setup(dashboard.opts)
  end,
}
