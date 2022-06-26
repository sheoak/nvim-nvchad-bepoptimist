-- neovim general settings

vim.g.mapleader = ';'

-- vim.opt.number = false
vim.opt.backupdir="$HOME/.local/share/nvim/backups,$HOME/.backups/,/tmp/"
vim.opt.directory="$HOME/.local/share/nvim/swap//,$HOME/.backups//,/tmp//"
vim.opt.backupskip="/tmp/*,$HOME/backups/*,*.tmp/*,*.cache/*"
vim.opt.undodir="$HOME/.local/share/nvim/undo//,$HOME/.backups/undo//,/tmp/undo//"
vim.opt.guifont="FuraMono Nerd Font Mono:h12"

-- Neovide
-- it's not a plugin so it goes here
vim.g.neovide_transparency = 0.95
vim.g.neovide_cursor_trail_length = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_refresh_rate = 60

-- TODO: lua
vim.api.nvim_exec([[

" Python configuration (neovim 2 & 3 virtualenv must be created)
let g:python_host_prog=expand('~/.virtualenvs/neovim2/bin/python')
let g:python3_host_prog=expand('~/.virtualenvs/neovim3/bin/python')

]], false)

-- let $GIT_EDITOR = 'nvr -cc split --remote-wait'
