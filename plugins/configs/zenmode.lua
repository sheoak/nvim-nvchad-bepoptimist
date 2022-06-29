local present, zenmode = pcall(require, "zen-mode")

if not present then
   return
end

zenmode.setup {
  window = {
    backdrop = 1,
    width = 120,
    options = {
      signcolumn = "no",
      number = false,
      relativenumber = false,
      cursorline = false,
      cursorcolumn = false,
    },
  },
  plugins = {
    options = {
      enabled = true,
      ruler = false,
      showcmd = false,
    },
    -- twilight = { enabled = true },
    gitsigns = { enabled = false },
    kitty = {
      enabled = true,
      font = "+1",
    },
  },
}
