-- neovim general settings
vim.g.mapleader = ';'

-- Neovide
-- it's not a plugin so it goes here
vim.g.neovide_transparency = 0.95
vim.g.neovide_cursor_trail_length = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_refresh_rate = 60

-- TODO: check
vim.g.python_host_prog="$HOME/.virtualenvs/neovim2/bin/python"
vim.g.python3_host_prog="$HOME/.virtualenvs/neovim3/bin/python"

-- let $GIT_EDITOR = 'nvr -cc split --remote-wait'
