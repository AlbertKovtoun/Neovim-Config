-- lua/plugins/formatting.lua
return {
  {
    "mhartington/formatter.nvim",
    config = function()
      local function prettier()
        local args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) }
        -- Check if a .prettierrc file exists in the project
        if vim.fn.filereadable(vim.fn.getcwd() .. "/.prettierrc") == 0 then
          -- If no .prettierrc, apply default options
          table.insert(args, "--single-quote=false")
          table.insert(args, "--semi=false")
        end
        return {
          exe = "prettier",
          args = args,
          stdin = true,
        }
      end

      require("formatter").setup({
        filetype = {
          html = { prettier },
          css = { prettier },
          javascript = { prettier },
          typescript = { prettier },
          javascriptreact = {
            function()
              return {
                exe = "prettier",
                args = {
                  "--write",
                  "--single-quote=false",
                  "--semi=false",
                  vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
                },
                stdin = false,
              }
            end,
          },
          lua = {
            function()
              return {
                exe = "stylua",
                args = {
                  "--search-parent-directories",
                  "--stdin-filepath",
                  vim.api.nvim_buf_get_name(0),
                  "-",
                },
                stdin = true,
                try_node_modules = true,
              }
            end,
          },
        },
      })

      -- Format when hitting Shift + Alt + f
      vim.api.nvim_set_keymap("n", "<S-M-f>", ":Format<CR>", { noremap = true, silent = true })
    end,
  },
}
