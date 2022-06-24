
vim.api.nvim_exec([[

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extended settings for vim
"
" This configuration only contains personnal settings like custom paths,
" themes, fonts…
"
" see plugin vim-sheoak-base-settings for base settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" default leader is bad in azerty and bépo keyboards
" vim-bepoptimist plugin will take care of moving , and ;
" we mainly use it as "execute prefix, see mapping.vim.
let mapleader = ";"

" you need to create backups and undo directory
" XDG_DATA_HOME may not be defined so we use home
" the last // will add the absolute path to the file
set backupdir=$HOME/.local/share/nvim/backups,$HOME/.backups/,/tmp/
set directory=$HOME/.local/share/nvim/swap//,$HOME/.backups//,/tmp//
set backupskip=/tmp/*,$HOME/backups/*,*.tmp/*,*.cache/*

set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Persistent Undo
" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
    set undodir=$HOME/.local/share/nvim/undo//,$HOME/.backups/undo//,/tmp/undo//
endif

" jump to buffer instead of using current window, when using :sbuffer
set switchbuf=uselast

" leave this for git gutter
set updatetime=100

" neovim-remote
if has('nvim')
    let $GIT_EDITOR = 'nvr -cc split --remote-wait'
endif

set guifont=FuraMono\ Nerd\ Font\ Mono:h12

]], false)
