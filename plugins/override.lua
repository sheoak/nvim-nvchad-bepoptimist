local M = {}

M.telescope = {
  -- extensions = {
  --   ["ui-select"] = {
  --     -- require("telescope.themes").get_dropdown {
  --     --   -- even more opts
  --     -- }
  --   },
  -- },
  defaults = {
    dynamic_preview_title = false,
    results_title = false,
    prompt_title = false,
  },
}

M.treesitter = {
   matchup = {
      -- mandatory, false will disable the whole extension
      enable = true,
   },
   ensure_installed = {
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "bash",
      "vue",
      "markdown",
      "python",
      "scss",
      "pug",
      "json",
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
   view = {
      side = "right",
      width = 20,
   },
}

M.bufferline = {
  options = {
    tab_size = 18,
    show_close_icon = false,
    show_buffer_close_icons = false,
    middle_mouse_command = "bdelete! %d",
    diagnostics = "coc",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    separator_style = "slant",
    -- NOTE: this will be called a lot so don't do any heavy processing here
    -- fixme
    custom_filter = function(buf_number, buf_numbers)
      -- hide terms
      if string.find(vim.fn.bufname(buf_number), "zsh") ~= nil then
        return false
      end
      return true
    end,
  }
}

M.gitsigns = {
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or { silent = true }
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    map({'n', 'v'}, '’a', ':Gitsigns stage_hunk<CR>')
    map({'n', 'v'}, '’u', ':Gitsigns reset_hunk<CR>')
    map('n', '’z', gs.undo_stage_hunk)
    map('n', '’v', gs.preview_hunk)
    map('n', '’A', gs.stage_buffer)
    map('n', '’U', gs.reset_buffer)

    -- Text Objects
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}


return M
