local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
   local servers = {
     -- web
      "html",
      "cssls",
      -- "cssmodules_ls",
      -- "vuels",
      "volar",
      "tsserver",
      "eslint",
      "vimls",
      "tailwindcss",
      "emmet_ls",
      -- markdown
      "marksman",
      -- "vls",
      -- lua
      -- "sumneko_lua",
      -- system
      "bashls",
      -- python
      -- "jedi_language_server",
      -- "pylsp",
      "pyright",
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end

   -- lspconfig["sumneko_lua"].setup {
   --     on_attach = attach,
   --     capabilities = capabilities,
   --     settings = {
   --         Lua = {
   --             diagnostics = {
   --                 globals = { 'vim' }
   --             }
   --         }
   --     }
   -- }

end

return M
