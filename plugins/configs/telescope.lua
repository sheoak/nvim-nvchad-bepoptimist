local present, telescope = pcall(require, "telescope")

if not present then
   return
end

telescope.setup {
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
      filetypes = {"png", "webp", "jpg", "jpeg"},
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
