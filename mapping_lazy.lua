local M = {}

M.leap = {
  n = {
    ["k"] = {"<Plug>(leap-forward)", "Leap Forward", opts = { noremap = false }},
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

M.camelcase = {
   n = {
      ["ç"]  = {"<Plug>CamelCaseMotion_w", "CamelCase ->" , opts = { noremap = false }},
      ["Ç"]  = {"<Plug>CamelCaseMotion_e", "CamelCase -> (inclusive)" },
      ["gç"] = {"<Plug>CamelCaseMotion_ge", "CamelCase <-" },
      ["gÇ"] = {"<Plug>CamelCaseMotion_b", "CamelCase <- (inclusive)" },
   },
   v = {
      ["ç"]  = {"<Plug>CamelCaseMotion_w", "CamelCase ->" },
      ["Ç"]  = {"<Plug>CamelCaseMotion_e", "CamelCase -> (inclusive)" },
      ["gç"] = {"<Plug>CamelCaseMotion_ge", "CamelCase <- " },
      ["gÇ"] = {"<Plug>CamelCaseMotion_b", "CamelCase <- (inclusive)" },
   },
   o = {
      -- CamelCase text-objects (ç)
      ["ç"]  = {"<Plug>CamelCaseMotion_w", "CamelCase Text-Object ->" },
      ["Ç"]  = {"<Plug>CamelCaseMotion_e", "CamelCase Text-Object -> (before)" },
      -- usefull?
      ["gç"] = {"<Plug>CamelCaseMotion_ge", "CamelCase Text-Object <-" },
      ["aç"] = {"<Plug>CamelCaseMotion_iw", "CamelCase Ambiant Text-Object" },
      ["iç"] = {"<Plug>CamelCaseMotion_ib", "CamelCase Inner Text-Object" },
      -- usefull?
      ["gÇ"] = {"<Plug>CamelCaseMotion_b", "CamelCase Text-Object Outside" },
   },
   x = {
      ["ç"]  = {"<Plug>CamelCaseMotion_w", ""},
      ["Ç"]  = {"<Plug>CamelCaseMotion_e", ""},
      ["gç"] = {"<Plug>CamelCaseMotion_ge", ""},
      ["gÇ"] = {"<Plug>CamelCaseMotion_b", ""},
      ["aç"] = {"<Plug>CamelCaseMotion_iw", ""},
      ["iç"] = {"<Plug>CamelCaseMotion_ib", ""},
   }
}

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

M.neoclip = {
  n = {
    ['""'] = {"<cmd> lua require('telescope').extensions.neoclip.default()<CR>", "Neoclip" },
  }
}

return M

