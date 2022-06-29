local present, neoclip = pcall(require, "neoclip")

if not present then
   return
end

-- local function is_whitespace(line)
--   return vim.fn.match(line, [[^\s*$]]) ~= -1
-- end
-- 
-- local function all(tbl, check)
--   for _, entry in ipairs(tbl) do
--     if not check(entry) then
--       return false
--     end
--   end
--   return true
-- end

neoclip.setup {
  -- filter = function(data)
  --   return not all(data.event.regcontents, is_whitespace)
  -- end,
  history = 1000,
  enable_persistent_history = false,
  keys = {
    fzf = {
      select = 'default',
      paste = 'ctrl-l',
      paste_behind = 'ctrl-s',
    },
  },
}
