local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {

   b.formatting.eslint_d,
   b.diagnostics.eslint_d,
   b.code_actions.eslint_d,
   -- b.formatting.eslint_d.with {
   --    filetypes = {
   --       "html",
   --       "markdown",
   --       "css",
   --       "pug",
   --       "javascript",
   --       "typescript",
   --       "vue",
   --    }
   -- },
   -- b.diagnostics.eslint,

   -- b.formatting.autopep8.with { filetypes = { "python" } },
   -- Lua
   -- b.formatting.stylua,
   -- b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

   -- Shell
   -- b.formatting.shfmt,
   -- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
  -- format on save
  on_attach = function(client)

    if client.resolved_capabilities.document_formatting then
      vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
    end
  end,
}
