vim.o.mouse = ""

vim.cmd([[
  autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[5 q")
]])

-- Set leader key to comma
vim.g.mapleader = ","

vim.cmd([[
function! QuoteAllLines()
  " Add the note and backticks at the top
  call append(0, '[!NOTE]- OUTPUT')
  call append(1, '```')
  " Add the quoting to all lines
  %s/^/> /g
  " Add the backticks at the bottom
  $put ='> ```'
endfunction

command! QuoteAllLines call QuoteAllLines()
]])

-- Map the function to a shortcut key, for example, <Leader>q
vim.api.nvim_set_keymap('n', '<Leader>q', ':QuoteAllLines<CR>', { noremap = true, silent = true })
