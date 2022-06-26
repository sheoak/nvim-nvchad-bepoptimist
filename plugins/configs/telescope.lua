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
