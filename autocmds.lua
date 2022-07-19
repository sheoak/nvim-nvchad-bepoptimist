
local autocmd = vim.api.nvim_create_autocmd

-- auto padding for kitty terminal
autocmd("VimEnter", {
    callback = function()
        -- vim.cmd "silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=0 margin=0"
    end,
})
autocmd("VimLeave", {
    callback = function()
        -- vim.cmd "silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=20 margin=10"
    end,
})

autocmd("BufEnter", {
    pattern = "/dev/shm/*",
    callback = function()
        -- TODO: check
        vim.opt_local.backup = false
        vim.opt_local.swapfile = false
        vim.opt_local.undofile = false
    end,
})

-- autocmd("FileType", {
--     pattern = "javascript",
--     callback = function()
--         vim.opt_local.formatprg = "prettier --stdin"
--     end,
-- })

-- Spell configuration
-- if has("spell")
--     augroup spell
--         au!
--         au FileType text,mail,markdown,gitcommit setlocal spell spl=en,fr
--         au FileType help setlocal nospell
--     augroup END
-- end

-- File type detection
-- augroup fileDetect
--     au!
--
--     au BufEnter *.zsh-theme setlocal filetype=zsh
--     au BufEnter .jshintrc   setlocal filetype=json
--     au BufEnter *mutt-*     setlocal filetype=mail
--     au BufEnter Makefile    setlocal noexpandtab
--
--     " open special files in vim, like annoying docx or rtf…
--     autocmd BufReadPre *.docx       silent set ro
--     " autocmd BufEnter *.docx silent set modifiable
--     autocmd BufReadPost *.docx      silent %!pandoc --columns=78 "%" -f docx -t markdown "%" -d /dev/stdout
--     autocmd BufReadPost *.odp,*.odt silent %!pandoc --columns=78 "%" -t markdown -o /dev/stdout
--     autocmd BufReadPre *.doc        silent set ro
--     autocmd BufReadPost *.doc       silent %!antiword "%"
--     " Read-only rtf through unrtf
--     autocmd BufReadPre *.rtf        silent set ro
--     autocmd BufReadPost *.rtf       silent %!unrtf --text
--     " Read-only pdf through pdftotext
--     autocmd BufReadPre *.pdf        silent set ro
--     autocmd BufReadPost *.pdf       silent %!pdftotext -nopgbrk -layout -q -eol unix "%" - | fmt -w78
-- augroup END
-- }}}
--
-- File type settings {{{
-- augroup fileTypes
--     au!
--     " Tab settings
--     au FileType sass,pug,html,yaml setlocal sts=2 sw=2 ts=2
--     " omnifunc by types
--     au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
--     au FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
--     au FileType java          setlocal omnifunc=javacomplete#Complete
--     " formating by types
--     au FileType text          setlocal tw=78 fo+=t cole=0
--     au FileType markdown      setlocal tw=80 fo+=t cole=0
--     au FileType gitcommit     setlocal tw=72 fo+=t cc=72
--     au FileType mail          setlocal tw=72 fo+=o listchars=tab:\ \
--     " Comments for vue
--     au FileType vue setlocal commentstring=//\ %s
--     " Emmet
--     au FileType html,css,vue EmmetInstall
-- augroup END
