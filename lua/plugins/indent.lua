-- return {
--   "lukas-reineke/indent-blankline.nvim",
--   main = "ibl",
--   config = function()
--     require("ibl").setup({
--       indent = {
--         char = "│",
--       },
--       exclude = {
--         filetypes = { "help", "dashboard", "packer", "NvimTree" },
--         buftypes = { "terminal" },
--       },
--     })
--   end,
-- }

return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("hlchunk").setup({
        indent = {
          enable = true,
          -- ...
        },
      })
    end,
  },
}
