-- keymap
--------------------------------------------------------------------------------
-- Toggle visible whitespace characters
vim.keymap.set('n', '<leader>ws', ':listchars!<cr>', { desc = 'Toggle [l]istchars' })

-- teej
local set = vim.keymap.set
local k = vim.keycode

-- Toggle hlsearch if it's on, otherwise just do "enter"
set("n", "<CR>", function()
  ---@diagnostic disable-next-line: undefined-field
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ""
  else
    return k "<CR>"
  end
end, { expr = true })

set("n", "j", function(...)
  local count = vim.v.count

  if count == 0 then
    return "gj"
  else
    return "j"
  end
end, { expr = true })

set("n", "k", function(...)
  local count = vim.v.count

  if count == 0 then
    return "gk"
  else
    return "k"
  end
end, { expr = true })

-- prime
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- move blocks of code up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")

-- block mode delete to bhole and past 
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

--vim.keymap.set("n", "<leader>f", function()
--    require("conform").format({ bufnr = 0 })
--end)

-- replace word under cursor everywhere
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--vim.keymap.set("n", "<leader>ca", function()
--    require("cellular-automaton").start_animation("make_it_rain")
--end)

--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>')

