-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Save session on exit
vim.api.nvim_create_autocmd("VimLeave", {
  pattern = "*",
  command = "mksession! Session.vim",
})

-- Load session on start if it exists
if vim.fn.filereadable("Session.vim") == 1 then
  vim.cmd("source Session.vim")
end
