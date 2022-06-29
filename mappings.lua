-- TODO: migrate bepoptimist

-- fixme: snippets are broken with bepo t/n

local M = {}

M.disabled = {
  n = {
     ["<C-s>"] = "",
     ["<C-n>"] = "", -- nerdtree toggle
     ["gb"] = "", -- comment toggle
     ["<leader>n"] = "",
     ["<leader>e"] = "", -- focus nvim tree
     ["<leader>x"] = "", -- close buffer
     ["<leader>d"] = "", -- lsp definition
     ["<leader>pt"] = "", -- pick hidden term
     ["<leader>/"] = "", -- toggle comment
     ["<leader>gm"] = "", -- git messenger
     ["<leader>gt"] = "", -- git status
     ["<leader>b"] = "",  -- jump to current context
     ["<leader>cu"] = "", -- find media
     ["<leader>cm"] = "", -- git commit
     ["<leader>ls"] = "", -- lsp help
     ["<leader>ra"] = "", -- lsp help
     ["<leader>rn"] = "", -- lsp rename
     ["<leader>tk"] = "", -- show keys
     ["<leader>th"] = "", -- show themes
     ["<leader>fm"] = "", -- lsp format
     ["<leader>fo"] = "", -- find old
     ["<leader>fw"] = "", -- live grep
     ["<leader>ff"] = "", -- find files
     ["<leader>fa"] = "", -- find all
     ["<leader>fb"] = "", -- find buffers
     ["<leader>fh"] = "", -- find help
     ["<C-h>"] = "",
     ["<C-l>"] = "",
     ["<C-j>"] = "",
     ["<C-k>"] = "",
  },
  x = {
     ["gb"] = "", -- comment toggle
  }
}

-- mapping kept:
-- ["<leader>h"] = "", -- horizontal term
-- ["<leader>v"] = "", -- vertical term

-- BEPO

M.bepo = require "custom.mappings-bepo"

-- END BEPO

-- M.treesitter = {
--    n = {
--       ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
--    },
-- }

-- ---------------------------------------------------------------------------
-- <LEADER>… Misc. plugins commands
-- ---------------------------------------------------------------------------

-- TODO: replace with alpha and auto-session/session-lens
-- Startify <leader>s…
M.alpha = {
   n = {
      ["<leader><leader>"] = { "<cmd> Alpha<CR>", "Alpha" },
   },
}

M.autosession = {
   n = {
      ["<leader>s"] = { "", "Session…"},
      ["<leader>sw"] = { "<cmd> SaveSession<CR>", "Save Session" },
      ["<leader>sl"] = { "<cmd> SearchSession<CR>", "Search Session" },
      ["<leader>sr"] = { "<cmd> RestoreSession<CR>", "Search Restore" },
      -- ["<leader>sc"] = { "<cmd> SClose<CR>", "Close Session" },
      ["<leader>sd"] = { "<cmd> DeleteSession<CR>", "Delete Session" },
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

M.ui = {
   n = {
      ["<leader>z"] = {"<cmd> ZenMode<CR>", "ZenMode Toggle"},
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

-- ---------------------------------------------------------------------------
-- COMMA (files and telescope)
-- ---------------------------------------------------------------------------
-- TODO:
-- command! BufCurOnly execute '%bdelete|edit#|bdelete#'
M.files = {
   n = {
      [",\""] = {"<cmd> Telescope registers<CR>", "Registers"},
      [",,"] = {"<cmd> Telescope find_files<CR>", "Files"},
      [",/"] = {"<cmd> Telescope search_history<CR>", "Search History"},
      [",:"] = {"<cmd> Telescope command_history<CR>", "Commands History"},
      [",?"] = {"<cmd> Telescope help_tags<CR>", "Help"},
      [",@"] = {"<cmd> Telescope commands<CR>", "Commands"},
      -- [",~"] = {"<cmd> Telescope find_files ~<CR>", "Files"},
      [",a"] = {"<cmd> only <CR>", "Only Window"},
      [",A"] = {"<cmd> tabonly <CR>", "Only Tab"},
      [",b"] = {"<cmd> Telescope buffers<CR>", "Buffers"},
      [",c"] = {"<cmd> Telescope colorscheme<CR>", "Coloschemes"},
      [",d"] = {"<cmd> bdelete<CR>", "Delete Buffer"},
      [",D"] = {"<cmd> bdelete!<CR>", "Delete Buffer (force)"},
      [",e"] = {"<cmd> Telescope diagnostics<CR>", "Diagnostics"},
      [",f"] = {"<cmd> Telescope quickfix<CR>", "Quickfix"},
      [",g"] = {"<cmd> Telescope live_grep<CR>", "Live Grep"},
      [",h"] = {"<cmd> Telescope oldfiles<CR>", "Files History"},
      -- i
      [",j"] = {"<cmd> Telescope jumplist<CR>", "Jumps"},
      -- k
      [",l"] = {"<cmd> Telescope loclist<CR>", "Location List"},
      [",m"] = {"<cmd> Telescope keymaps<CR>", "Keymaps"},
      [",M"] = {"<cmd> Telescope marks<CR>", "Marks"},
      -- n
      [",o"] = {"<cmd> Telescope vim_options<CR>", "Vim Options"},
      [",p"] = {"<cmd> lua require'telescope'.extensions.project.project{}<CR>", "List Projects"},
      [",Q"] = {"<cmd> qa<CR>", "Quit All"},
      [",q"] = {"<cmd> q<CR>", "Quit"},
      [",r"] = {"<cmd> Telescope resume<CR>", "Resume"},
      [",s"] = {"<cmd> w<CR>", "Save"},
      [",S"] = {"<cmd> w!<CR>", "Save (force)"},
      [",t"] = {"<cmd> Telescope terms<CR>", "Hidden Terminals"},
      [",T"] = {"<cmd> Telescope<CR>", "Telescope"},
      [",u"] = {"<cmd> bunload<CR>", "Unload Buffer"},
      [",U"] = {"<cmd> bunload!<CR>", "Unload Buffer (force)"},
      [",v"] = {"<cmd> Telescope treesitter", "Treesitter"},
      [",w"] = {"<cmd> saveas<space>", "Save as"},
      [",W"] = {"<cmd> saveas!<space>", "Save as (force)"},
      [",x"] = {"<cmd> x<CR>", "Save and Quit"},
      [",X"] = {"<cmd> x!<CR>", "Save and Quit (force)"},
      -- TODO: use nvterm split
      [",y"] = {"<cmd> Dispatch yarn <CR>", "Yarn Install"},
      [",z"] = {"<cmd> UndotreeToggle <CR>", "Undo Tree Toggle"},
      [",Z"] = {"<cmd> UndotreeFocus <CR>", "Undo Tree Focus"},
   }
}

-- ---------------------------------------------------------------------------
-- FRENCH APOSTROPHE ’ (git: fugitive, gitsigns…)
-- ---------------------------------------------------------------------------

M.git = {
   n = {
      ["’’"] =    {"<cmd> Telescope git_files<CR>", "Git Files"},
      ["’<BS>"] = {"<cmd> GitTimeLapse<CR>", "Timelapse"},
      ["’?"] =    {"<cmd> G blame<CR>", "Git Blame"},
      -- a
      ["’b"] =    {"<cmd> Telescope git_branches<CR>", "Telescope Git Branches"},
      ["’c"] =    {"<cmd> G commit -v -q<CR>", "Git Commit"},
      ["’d"] =    {"<cmd> Gvdiffsplit!<CR>", "Git Diff Split"},
      ["’E"] =    {"<cmd> Gedit :0<CR>", "Git Edit"},
      ["’e"] =    {"<cmd> Gedit<CR>", "Git Edit"},
      ["’fd"] =   {"<cmd> GDelete<CR>", "Git Delete"},
      ["’fm"] =   {"<cmd> GMove<CR>", "Git Move"},
      ["’H"] =    {"<cmd> Telescope git_bcommits<CR>", "Telescope Git Buffer Commits"},
      ["’h"] =    {"<cmd> Telescope git_commits<CR>", "Telescope Git Commits"},

      ["’g"] =    {"", "Github…"},
      ["’gb"] =    {"<cmd> GBrowse<CR>", "Open File on Github"},
      ["’gc"] =    {"<cmd> Octo pr checkout <CR>", "Github PR Checkout"},
      ["’gd"] =    {"<cmd> Octo pr diff <CR>", "Github PR Diff"},
      ["’gl"] =    {"<cmd> Octo pr list <CR>", "Github PR List"},
      ["’gn"] =    {"<cmd> Octo pr create <CR>", "Github PR Create"},
      ["’go"] =    {"<cmd> Octo pr browser <CR>", "Github PR Browse"},
      ["’gr"] =    {"<cmd> Octo pr ready <CR>", "Github PR Ready"},
      ["’gR"] =    {"<cmd> Octo pr reload <CR>", "Github PR Reload"},
      ["’gs"] =    {"<cmd> Octo pr search <CR>", "Github PR Search"},
      ["’gv"] =    {"<cmd> Octo pr checks <CR>", "Github PR Checks"},

      ["’i"] =    {"", "Github issues…"},
      ["’il"] =    {"<cmd> Octo issue list <CR>", "Github Issue List"},
      ["’in"] =    {"<cmd> Octo issue create <CR>", "Github Issue Create"},
      ["’iq"] =    {"<cmd> Octo issue close <CR>", "Github Issue Close"},
      ["’io"] =    {"<cmd> Octo issue browser <CR>", "Github Issue Open"},
      ["’iR"] =    {"<cmd> Octo issue reload <CR>", "Github Issue Reload"},
      ["’is"] =    {"<cmd> Octo issue search <CR>", "Github Issue Search"},

      -- j
      -- k
      ["’l"] =    {"<cmd> G pull<CR>", "Git Pull"},
      ["’L"] =    {"<cmd> G! pull<CR>", "Git Pull Async"},
      ["’m"] =    {"<cmd> G merge<CR>", "Git Merge"},
      ["’n"] =    {"<cmd> diffget //3<CR>", "Git Get Right"},
      ["’o"] =    {"<Plug>(git-messenger)", "Git Messenger"},
      ["’p"] =    {"<cmd> G! push<CR>", "Git Push"},
      ["’fp"] =    {"<cmd> G! push -f<CR>", "Git Push -f"},
      ["’P"] =    {"<cmd> G! push -f --with-lease<CR>", "Git Push -f With Lease"},
      -- q
      ["’r"] =    {"<cmd> G rebase<CR>", "Git Rebase"},
      ["’R"] =    {"<cmd> G rebase master<CR>", "Git Rebase master"},
      ["’s"] =    {"<cmd> G<CR>", "Git Status"},
      ["’S"] =    {"<cmd> Telescope git_status<CR>", "Telescope Git Status"},
      ["’t"] =    {"<cmd> diffget //2<CR>", "Git Get Left"},
      -- u
      ["’w"] =    {"<cmd> Gwrite<CR>", "Git Write"},
      -- x
      -- y
      ["’z"] =    {"<cmd> Telescope git_stash<CR>", "Telescope Git Stash"},
   }
}

-- ---------------------------------------------------------------------------
-- Misc.
-- ---------------------------------------------------------------------------
-- M.nvterm = {
--    t = {
--       ["<C-q>"] = {
--          function()
--             local nvterm = require("nvterm.terminal")
--             -- require("nvterm.terminal").close_all_terms()
--             for _, buf in ipairs(nvterm.list_active_terms("buf")) do
--                nvterm.get_and_hide(_)
--             end
--          end,
--          "Hide All Terms",
--       },
--    }
-- }

M.nvim = {
   n = {
      ["<BS>"] = {"<PageUp>", "Page Up"},
      -- ["<Space>"] = {"<PageDown>", "Page Down"},
      ["gp"] = { "`[v`]" , "Select last pasted text"},
      ["Y"] = { "y$", "Yank line"},
   },
   x = {
      ["p"] = { "pgvy", "Paste without override register" }
   },
   i = {
     ["<C-l>"] = {"<C-x><C-l>", "Complete Line"},
   },
   v = {
      ["Q"] = { "gq", "Wrap Text" },
   },
   -- use CTRL-q (disabled in kitty) to escape terminal mode
   t = {
      ["<C-s>"] = {"<C-\\><C-n>", "Exit Terminal"},
   }
}

M.convertcolor = {
   n = {
      ["<leader>cR"] = { "<cmd> ConvertColorTo rgb<CR>", "Convert to RGB"},
      ["<leader>cA"] = { "<cmd> ConvertColorTo rgba<CR>", "Convert to RGBA"},
      ["<leader>cH"] = { "<cmd> ConvertColorTo hex<CR>", "Convert to #hex"},
   }
}

M.vcoolor = {
   n = {
      ["<leader>cr"] = { "<cmd> VCoolIns r<CR>", "Color Picker RGB"},
      ["<leader>ca"] = { "<cmd> VCoolIns ra<CR>", "Color Picker RGBA"},
      ["<leader>ch"] = { "<cmd> VCoolor<CR>", "Color Picker #hex"},
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
