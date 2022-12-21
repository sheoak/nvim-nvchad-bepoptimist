local present, fzflua = pcall(require, "fzf-lua")

if not present then
   return
end
-- local actions = require "fzf-lua.actions"
-- local config = require("fzf-lua.config")

-- TODO: remove globals

-- local M = {}
-- local utils = require "fzf-lua.utils"
-- M.… and return M

function _G.rebaseCommit(selected)
  local commit_hash = selected[1]:match("[^ ]+")
  vim.api.nvim_command("Git rebase -i --autosquash " .. commit_hash)
end

function _G.rebaseBranch(selected)
  vim.api.nvim_command("Git rebase " .. selected[1])
end

function _G.fixupCommit(selected)
  local commit_hash = selected[1]:match("[^ ]+")
  vim.api.nvim_command("Git commit --fixup=" .. commit_hash)
end

function _G.fixupAndRebaseCommit(selected)
  local commit_hash = selected[1]:match("[^ ]+")
  vim.api.nvim_command("Git commit --fixup=" .. commit_hash)
  -- fixme, for root, we should use --root not ^1
  vim.api.nvim_command("Git rebase -i --autosquash " .. commit_hash .. "^1")
end

function _G.ghIssues(opts)
  local fzf = require('fzf-lua')
  opts = fzf.config.normalize_opts(opts, fzf.config.globals.git)

  opts.cmd = "gh issue list | cut -f1-3 -d'	'"

  opts.actions = {
    ["default"] = { function(sel) print("sel", sel[1]) end, fzf.actions.resume },
    ["ctrl-d"]  = { function(sel) print("sel", sel[1]) end, fzf.actions.resume },
    ["ctrl-o"]  = { function(sel) print("sel", sel[1]) end, fzf.actions.resume },
    ["ctrl-c"]  = { function(sel) print("sel", sel[1]) end, fzf.actions.resume },
  }

  fzf.core.fzf_wrap(opts, opts.cmd, function(selected)
    if not selected then return end
    fzf.actions.act(opts.actions, selected, opts)
  end)()
end

function _G.ghPrs(opts)
  local fzf = require('fzf-lua')
  opts = fzf.config.normalize_opts(opts, fzf.config.globals.git)

  opts.cmd = "gh pr list"

  opts.actions = {
    ["default"] = { function(sel) print("sel", sel[1]) end, fzf.actions.resume },
    ["ctrl-d"]  = { function(sel) print("sel", sel[1]) end, fzf.actions.resume },
    ["ctrl-o"]  = { function(sel) print("sel", sel[1]) end, fzf.actions.resume },
    ["ctrl-c"]  = { function(sel) print("sel", sel[1]) end, fzf.actions.resume },
  }

  fzf.core.fzf_wrap(opts, opts.cmd, function(selected)
    if not selected then return end
    fzf.actions.act(opts.actions, selected, opts)
  end)()
end

fzflua.setup {
  previewers = {
    builtin = {
      syntax          = true,         -- preview syntax highlight?
      syntax_limit_l  = 0,            -- syntax limit (lines), 0=nolimit
      syntax_limit_b  = 1024*1024,    -- syntax limit (bytes), 0=nolimit
      limit_b         = 1024*1024*10, -- preview limit (bytes), 0=nolimit
       extensions      = {
          ["png"]       = { "viu", "-b" },
          ["jpg"]       = { "viu", "-b" },
          ["jpeg"]      = { "viu", "-b" },
        },
    },
  },
  winopts = {
    preview = {
      delay = 130,
      -- layout = 'vertical',
      vertical       = 'down:65%',
      horizontal       = 'right:55%',
      -- hidden         = 'hidden',
      winopts = {
        number            = false,
        signcolumn        = 'yes',
      }
    },
  },
  files = {
    rg_opts = "--color=never --files --hidden --follow -g '!.git'",
    fd_opts = "--color=never --type f --hidden --follow --exclude .git",
    fzf_opts = {
      ["--keep-right"]  = '',
    },
  },
  -- buffers = {
  --   path_shorten   = true,
  -- },
  git = {
    bcommits = {
      actions = {
        ["ctrl-r"] = rebaseCommit,
        ["ctrl-e"] = fixupCommit,
        -- todo: diff
      }
    },
    commits = {
      actions = {
        ["ctrl-r"] = rebaseCommit,
        ["ctrl-e"] = fixupCommit,
        ["ctrl-w"] = fixupAndRebaseCommit,
        -- todo: diff
      }
    },
    branches = {
      actions = {
        ["ctrl-r"] = rebaseBranch,
        -- todo: diff
      }
    }
  }
}

-- nnoremap ’il <cmd>lua ghIssues({})<CR>
-- nnoremap ’ip <cmd>lua ghPrs({})<CR>

-- FzfLua register_ui_select
