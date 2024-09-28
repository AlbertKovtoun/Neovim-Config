return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    require("ibl").setup({
      indent = {
        char = "│",
      },
      exclude = {
        filetypes = { "help", "dashboard", "packer", "NvimTree" },
        buftypes = { "terminal" },
      },
    })
  end,
}
