-- bootstrap lazy.nvim, LazyVim and your plugins
vim.cmd([[
  augroup filetypes
    autocmd!
    autocmd BufNewFile,BufRead *.pl set filetype=prolog
  augroup END
]])

vim.cmd([[
  augroup filetypes
    autocmd!
    autocmd BufNewFile,BufRead justfile set filetype=make
  augroup END
]])

require("config")
