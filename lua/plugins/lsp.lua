return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          -- "tsserver",
          -- "html",
          "pylsp",
          -- "svelte",
          -- "gopls"
          -- "csharp_ls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})
      -- lspconfig.tsserver.setup({})
      -- lspconfig.html.setup({})
      lspconfig.pylsp.setup({
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                -- maxLineLength = 100
                enabled = false
              }
            }
          }
        }
      })

      -- lspconfig.svelte.setup({
      --   filetypes = { 'typescript', 'javascript', 'svelte', 'html', 'css' }
      -- })

      -- lspconfig.gopls.setup({})

      -- lspconfig.csharp_ls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
  }
}
