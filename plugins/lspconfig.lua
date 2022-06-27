local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
   local servers = {
      "html",
      "bashls",
      "cssls",
      "vuels",
      "volar",
      "tsserver",
      "eslint",
      "sumneko_lua",
      "vimls",
      "tailwindcss",
      "jedi_language_server",
      "emmet_ls",
      "marksman",
      "vls",
   }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
