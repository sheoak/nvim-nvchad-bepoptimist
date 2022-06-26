-- TODO: migrate bepoptimist

local M = {}

-- TODO: override instead
M.bepo = require "custom.mappings-bepo"

M.leap = {
   n = {
      ["k"] = {"<Plug>(leap-forward)", "Leap Forward"},
      ["K"] = {"<Plug>(leap-backward)", "Leap Backward"},
      ["è"] = {"<Plug>(leap-forward-x)", "Leap Forward, inclusive"},
      ["È"] = {"<Plug>(leap-backward-x)", "Leap Backward, inclusive"},
      ["gk"] = {"<Plug>(leap-cross-window)", "Leap Forward"},
   },
   v = {
      ["k"] = {"<Plug>(leap-forward)", "Leap Forward"},
      ["K"] = {"<Plug>(leap-backward)", "Leap Backward"},
      ["è"] = {"<Plug>(leap-forward-x)", "Leap Forward, inclusive"},
      ["È"] = {"<Plug>(leap-backward-x)", "Leap Backward, inclusive"},
   },
   o = {
      ["k"] = {"<Plug>(leap-forward)", "Leap Forward"},
      ["K"] = {"<Plug>(leap-backward)", "Leap Backward"},
      ["è"] = {"<Plug>(leap-forward-x)", "Leap Forward, inclusive"},
      ["È"] = {"<Plug>(leap-backward-x)", "Leap Backward, inclusive"},
   },
}

-- BEPO
M.surround = {
   n = {
      ["du"]  = {"<Plug>Dsurround", "Surround Delete"},
      ["cu"]  = {"<Plug>Csurround", "Surround Replace"},
      ["cU"]  = {"<Plug>CSurround", "Surround Replace (inc.)"},
      ["yu"]  = {"<Plug>Ysurround", "Surround Yank"},
      ["yU"]  = {"<Plug>YSurround", "Surround Yank (inc.)"},
      ["yuu"] = {"<Plug>Yssurround", "Surround Yank ?"},
      ["yuU"] = {"<Plug>YSsurround", "Surround Yank ?"},
   },
   x = {
      ["u"] = { "<Plug>VSurround", "Add around"},
      ["U"] = { "<Plug>VgSurround", "Add around, linewise" },
   }
}

-- END BEPO

M.disabled = {
  n = {
     ["<C-s>"] = "",
     ["<C-n>"] = "", -- nerdtree toggle
     ["gb"] = "", -- comment toggle
     ["<leader>n"] = "",
     ["<leader>x"] = "", -- close buffer
     ["<leader>pt"] = "", -- pick hidden term
     ["<leader>/"] = "", -- toggle comment
  },
  x = {
     ["gb"] = "", -- comment toggle
  }
}

M.treesitter = {
   n = {
      ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
   },
}

M.neoclip = {
   n = {
      ['""'] = {
         -- FIXME
         "<cmd> lua require('telescope').extensions.neoclip.default()<CR>",
         "Neoclip",
      },
   },
}

-- Startify <leader>s…
M.startify = {
   n = {
      ["<leader><leader>"] = { "<cmd> Startify<CR>", "Startify" },
      ["<leader>s"] = { "", "Startify…"},
      ["<leader>ss"] = { "<cmd> SSave<CR>", "Save Session" },
      ["<leader>sl"] = { "<cmd> SLoad<CR>", "Load Session" },
      ["<leader>sc"] = { "<cmd> SClose<CR>", "Close Session" },
      ["<leader>sd"] = { "<cmd> SDelete<CR>", "Delete Session" },
   },
}

-- Packer <leader>p…
M.packer = {
   n = {
      ["<leader>p"] = { "", "Packer…" },
      ["<leader>pi"] = { "<cmd> PackerInstall<CR>", "Packer Install" },
      ["<leader>pu"] = { "<cmd> PackerUpdate<CR>", "Packer Update" },
      ["<leader>ps"] = { "<cmd> PackerSync<CR>", "Packer Sync" },
      ["<leader>pS"] = { "<cmd> PackerStatus<CR>", "Packer Status" },
      ["<leader>pc"] = { "<cmd> PackerClean<CR>", "Packer Clean" },
      ["<leader>pm"] = { "<cmd> PackerCompile<CR>", "Packer Compile" },
      ["<leader>pp"] = { "<cmd> PackerProfile<CR>", "Packer Profile" },
      -- FIXME, use telescope or fzf?
      -- ["<leader>ph"] = { "", "Packer Snapshot…" },
      -- ["<leader>phs"] = { "<cmd> PackerSnapshot ", "Packer Snapshot" },
      -- ["<leader>phd"] = { "<cmd> PackerSnapshotDelete ", "Packer Snapshot Delete" },
      -- ["<leader>phr"] = { "<cmd> PackerSnapshotRollaback ", "Packer Snapshot Rollback" },
   },
}

M.nvim = {
   n = {
      ["<BS>"] = {"<PageUp>", "Page Up"},
      ["<Space>"] = {"<PageDown>", "Page Down"},
      ["gp"] = { "`[v`]" , "Select last pasted text"},
      ["Y"] = { "y$", "Yank line"},
   },
   x = {
      ["p"] = { "pgvy", "Paste without override register" }
   },
   v = {
      ["Q"] = { "gq", "Wrap Text" },
   },
}

M.files = {
   n = {
      [",s"] = {"<cmd> w<CR>", "Save"},
      [",S"] = {"<cmd> w!<CR>", "Save (force)"},
      [",w"] = {"<cmd> saveas<space>", "Save as"},
      [",W"] = {"<cmd> saveas!<space>", "Save as (force)"},
      [",q"] = {"<cmd> q<CR>", "Quit"},
      [",Q"] = {"<cmd> qa<CR>", "Quit All"},
      [",x"] = {"<cmd> x<CR>", "Save and Quit"},
      [",X"] = {"<cmd> x!<CR>", "Save and Quit (force)"},
      [",u"] = {"<cmd> bunload<CR>", "Unload Buffer"},
      [",U"] = {"<cmd> bunload!<CR>", "Unload Buffer (force)"},
      [",d"] = {"<cmd> bdelete<CR>", "Delete Buffer"},
      [",D"] = {"<cmd> bdelete!<CR>", "Delete Buffer (force)"},
   }
}

M.ui = {
   n = {
      [",z"] = {"<cmd> ZenMode<CR>", "ZenMode Toggle"},
   }
}

M.git = {
   n = {
      ["’<BS>"] = {"<cmd> GitTimeLapse<CR>", "Timelapse"},
   }
}

M.colors = {
   n = {
      ["<leader>cR"] = { "<cmd> ConvertColorTo rgb<CR>", "Convert to RGB"},
      ["<leader>cA"] = { "<cmd> ConvertColorTo rgba<CR>", "Convert to RGBA"},
      ["<leader>cH"] = { "<cmd> ConvertColorTo hex<CR>", "Convert to #hex"},
      ["<leader>cr"] = { "<cmd> VCoolIns r<CR>", "Color Picker RGB"},
      ["<leader>ca"] = { "<cmd> VCoolIns ra<CR>", "Color Picker RGBA"},
      ["<leader>ch"] = { "<cmd> VCoolor<CR>", "Color Picker #hex"},
   }
}

-- Pytest <leader>t…
-- TODO: migrate to Dap
M.pytest = {
   n = {
      ["<leader>tt"] = { "<cmd> Pytest function<CR>", "Test Function"},
      ["<leader>tf"] = { "<cmd> Pytest file<CR>", "Test File"},
      ["<leader>tp"] = { "<cmd> Pytest project<CR>", "Test Project"},
      ["<leader>ts"] = { "<cmd> Pytest session<CR>", "Test Session"},
      ["<leader>tx"] = { "<cmd> Pytest fails<CR>", "Show Fails Tests"},
      ["<leader>te"] = { "<cmd> Pytest error<CR>", "Show Error"},
      ["<leader>td"] = { "<cmd> Pytest file --pdb<CR>", "Pytest file with pdb"},
      ["<leader>tB"] = { "<cmd> Pytest file -s<CR>", "Pytest file to breakpoint"},
      ["<leader>tb"] = { "<cmd> opytest.set_trace()<ESC>", "Set trace"},
   }
}

-- TODO: remake insert maps with C-l
-- inoremap <C-j> <C-x><C-]>
-- inoremap <C-o> <C-x><C-o>

-- Repeat on all selected lines
--  vmap . :normal .

-- trouble
-- nmap <silent> ,<space>d <cmd>call coc#rpc#request('fillDiagnostics', [bufnr('%')])<CR><cmd>Trouble loclist<CR>`

return M
