local M = {}

M.packer = {
  profile = {
    enable = false,
    threshold = 0.2,
  },
}

M.autopairs = {
  map_cr = true,
  map_c_h = true,
  map_c_w = true,
  check_ts = true,
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
    width = 37,
    mappings = {
      list = {
        { key = "R", action = "first_sibling" },
        { key = "S", action = "last_sibling" },
        { key = "r", action = "prev_sibling" },
        { key = "s", action = "next_sibling" },
        { key = "<C-h>", action = "split" },
      }
    }
  },
}

M.bufferline = {
  options = {
    always_show_bufferline = true,
    separator_style = "slant",
    show_buffer_close_icons = false,
    middle_mouse_command = "bdelete! %d",
    custom_filter = function(buf_number)
      -- hide terms
      if string.find(vim.fn.bufname(buf_number), "zsh") ~= nil then
        return false
      end
      return true
    end,
    custom_areas = {
      right = function()
        -- don't want the nvchad buttons
      end
    }
    -- diagnostics = "coc",
    -- diagnostics_update_in_insert = true,
    -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
      --   return "("..count..")"
      -- end,
      -- FIXME
      -- NOTE: this will be called a lot so don't do any heavy processing here
      -- fixme
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

    -- TODO: move to mappings?

    -- Actions
    map({'n', 'v'}, "’a", ":Gitsigns stage_hunk<CR>")
    map({'n', 'v'}, "’u", ":Gitsigns reset_hunk<CR>")
    -- fixme, taken
    map('n', '’z', gs.undo_stage_hunk)
    map('n', '’v', gs.preview_hunk)
    map('n', '’A', gs.stage_buffer)
    map('n', '’U', gs.reset_buffer)

    -- Text Objects
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}

M.telescope = {
  defaults = {
    mappings = {
      n = {
        ["r"] = "move_selection_previous",
        ["s"] = "move_selection_next",
        ["<C-h>"] = "select_horizontal",
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },

    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg", "pdf", "mp4"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    },

    -- ["session-lens"] = {
    --   path_display = {'shorten'},
    -- },
    -- -- project = {
    -- --   base_dirs = {
    -- --     {path = '~/.config/', max_depth = 1},
    -- --     {path = '~/dev/', max_depth = 1},
    -- --   },
    -- --   -- hidden_files = true, -- default: false
    -- --   -- theme = "dropdown",
    -- -- },
    -- FIXME
    -- defaults = {
    --   dynamic_preview_title = false,
    --   results_title = false,
    --   prompt_title = false,
    -- },
  },
}

return M
