-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local tail = { noremap = true, silent = true }

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set({ "i", "s", "v" }, "jk", "<ESC>", tail)
-- keymap.set(
--   "n",
--   "<leader>r",
--   ':w<cr>:!kitty zsh -c "gcc "%:p" -g -o ~/bin/%:t:r && ~/bin/%:t:r ; sleep infinity"<cr>',
--   tail
-- )

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", tail)

-- delete single character without copying into register
keymap.set("n", "x", '"_x', tail)
keymap.set("n", "dd", '"_dd', tail)
keymap.set("n", "<leader>w", ":w<cr>", tail)
keymap.set("n", "<leader>x", ":xa!<cr>", tail)

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", tail) -- increment
keymap.set("n", "<leader>-", "<C-x>", tail) -- decrement

-- disabled keymaps
-- keymap.set("n", "<up>", "<NOP>", tail)
-- keymap.set("n", "<down>", "<NOP>", tail)
-- keymap.set("n", "<left>", "<NOP>", tail)
-- keymap.set("n", "<right>", "<NOP>", tail)
keymap.set("n", "<leader>ca", "<NOP>", tail)
keymap.set("n", "<leader>cl", "<NOP>", tail)
keymap.set("n", "<leader>cA", "<NOP>", tail)
keymap.set("n", "<leader>ch", "<NOP>", tail)
keymap.set("n", "<leader>cr", "<NOP>", tail)
keymap.set("n", "K", "<NOP>", tail)
keymap.set("n", "<leader>xt", "<NOP>", tail)
keymap.set("n", "<leader>st", "<NOP>", tail)
keymap.set("n", "<leader>sT", "<NOP>", tail)
keymap.set("n", "<leader>xT", "<NOP>", tail)
keymap.set("n", "<leader>qd", "<NOP>", tail)
keymap.set("n", "<leader>qS", "<NOP>", tail)
keymap.set("n", "<leader>qs", "<NOP>", tail)
keymap.set("n", "<leader>ql", "<NOP>", tail)
keymap.set("n", "<leader>ss", "<NOP>", tail)
keymap.set("n", "<leader>Ss", "<NOP>", tail)
keymap.set("n", "<leader>uC", "<NOP>", tail)
keymap.set("n", "<leader>sW", "<NOP>", tail)
keymap.set("n", "<leader>sw", "<NOP>", tail)
keymap.set("n", "<leader>sR", "<NOP>", tail)
keymap.set("n", "<leader>sq", "<NOP>", tail)
keymap.set("n", "<leader>sm", "<NOP>", tail)
keymap.set("n", "<leader>sM", "<NOP>", tail)
keymap.set("n", "<leader>sl", "<NOP>", tail)
keymap.set("n", "<leader>sk", "<NOP>", tail)
keymap.set("n", "<leader>sj", "<NOP>", tail)
keymap.set("n", "<leader>sH", "<NOP>", tail)
keymap.set("n", "<leader>sh", "<NOP>", tail)
keymap.set("n", "<leader>sG", "<NOP>", tail)
keymap.set("n", "<leader>sg", "<NOP>", tail)
keymap.set("n", "<leader>sD", "<NOP>", tail)
keymap.set("n", "<leader>sd", "<NOP>", tail)
keymap.set("n", "<leader>sC", "<NOP>", tail)
keymap.set("n", "<leader>sc", "<NOP>", tail)
keymap.set("n", "<leader>sb", "<NOP>", tail)
keymap.set("n", "<leader>sa", "<NOP>", tail)
keymap.set("n", "<leader>s", "<NOP>", tail)
keymap.set("n", "<leader>gs", "<NOP>", tail)
keymap.set("n", "<leader>gc", "<NOP>", tail)
keymap.set("n", "<leader>fR", "<NOP>", tail)
keymap.set("n", "<leader>fr", "<NOP>", tail)
keymap.set("n", "<leader>fg", "<NOP>", tail)
keymap.set("n", "<leader>fF", "<NOP>", tail)
keymap.set("n", "<leader>ff", "<NOP>", tail)
keymap.set("n", "<leader>fc", "<NOP>", tail)
keymap.set("n", "<leader>fb", "<NOP>", tail)
keymap.set("n", "<leader>/", "<NOP>", tail)
keymap.set("n", "<leader><space>", "<NOP>", tail)
keymap.set("n", "<leader><tab>[", "<NOP>", tail)
keymap.set("n", "<leader><tab>]", "<NOP>", tail)
keymap.set("n", "<leader><tab><tab>", "<NOP>", tail)
keymap.set("n", "<leader><tab>f", "<NOP>", tail)
keymap.set("n", "<leader><tab>o", "<NOP>", tail)
keymap.set("n", "<leader><tab>l", "<NOP>", tail)
keymap.set("n", "<leader>uz", "<NOP>", tail)
keymap.set("n", "<leader>uZ", "<NOP>", tail)
keymap.set("n", "<leader>wm", "<NOP>", tail)
keymap.set("n", "<leader>ft", "<NOP>", tail)
keymap.set("n", "<leader>fT", "<NOP>", tail)
keymap.set("n", "<leader>cm", "<NOP>", tail)
keymap.set("n", "<leader>L", "<NOP>", tail)
keymap.set("n", "<leader>uI", "<NOP>", tail)
keymap.set("n", "<leader>ui", "<NOP>", tail)
keymap.set("n", "<leader>gY", "<NOP>", tail)
keymap.set("n", "<leader>gb", "<NOP>", tail)
keymap.set("n", "<leader>gB", "<NOP>", tail)
keymap.set("n", "<leader>uh", "<NOP>", tail)
keymap.set("n", "<leader>dph", "<NOP>", tail)
keymap.set("n", "<leader>dpp", "<NOP>", tail)
keymap.set("n", "<leader>uS", "<NOP>", tail)
keymap.set("n", "<leader>ug", "<NOP>", tail)
keymap.set("n", "<leader>ua", "<NOP>", tail)
keymap.set("n", "<leader>uD", "<NOP>", tail)
keymap.set("n", "<leader>ub", "<NOP>", tail)
keymap.set("n", "<leader>uT", "<NOP>", tail)
keymap.set("n", "<leader>uA", "<NOP>", tail)
keymap.set("n", "<leader>uc", "<NOP>", tail)
keymap.set("n", "<leader>ud", "<NOP>", tail)
keymap.set("n", "<leader>ul", "<NOP>", tail)
keymap.set("n", "<leader>uL", "<NOP>", tail)
keymap.set("n", "<leader>uw", "<NOP>", tail)
keymap.set("n", "<leader>us", "<NOP>", tail)
keymap.set("n", "<leader>uf", "<NOP>", tail)
keymap.set("n", "<leader>uF", "<NOP>", tail)
keymap.set("n", "<leader>cd", "<NOP>", tail)
keymap.set("n", "<leader>cf", "<NOP>", tail)
keymap.set("n", "<leader>xq", "<NOP>", tail)
keymap.set("n", "<leader>xl", "<NOP>", tail)
keymap.set("n", "<leader>fn", "<NOP>", tail)
keymap.set("n", "<leader>K", "<NOP>", tail)
keymap.set("n", "<leader>ur", "<NOP>", tail)
keymap.set("n", "<leader>bD", "<NOP>", tail)
keymap.set("n", "<leader>bd", "<NOP>", tail)
keymap.set("n", "<leader>bo", "<NOP>", tail)
keymap.set("n", "<leader>`", "<NOP>", tail)
keymap.set("n", "<leader>.", "<NOP>", tail)
keymap.set("n", "<leader>,", "<NOP>", tail)
keymap.set("n", "<leader>bb", "<NOP>", tail)
keymap.set("n", "<leader>bl", "<NOP>", tail)
keymap.set("n", "<leader>br", "<NOP>", tail)
keymap.set("n", "<leader>bP", "<NOP>", tail)
keymap.set("n", "<leader>bp", "<NOP>", tail)
keymap.set("n", "<leader>snh", "<NOP>", tail)
keymap.set("n", "<leader>snl", "<NOP>", tail)
keymap.set("n", "<leader>sn", "<NOP>", tail)
keymap.set("n", "<leader>snt", "<NOP>", tail)
keymap.set("n", "<leader>snd", "<NOP>", tail)
keymap.set("n", "<leader>sna", "<NOP>", tail)
keymap.set("n", "<leader>?", "<NOP>", tail)
keymap.set("n", "<leader>up", "<NOP>", tail)
keymap.set("n", "<leader>dps", "<NOP>", tail)
keymap.set("n", "<leader>S", "<NOP>", tail)
keymap.set("n", "<leader>de", "<NOP>", tail)
keymap.set("n", "<leader>cF", "<NOP>", tail)
-- keymap.set("n", "<leader>", "<NOP>", tail)

-- window management
-- keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
--
-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
