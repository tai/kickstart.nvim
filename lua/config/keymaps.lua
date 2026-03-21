local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Faster HJKL
map({ 'n', 'v' }, '<C-v>', '<S-Down>', opts)
map({ 'n', 'v' }, '<C-u>', '<S-Up>', opts)

-- cancel
map({ 'n', 'v', 'i', 'c' }, '<C-g>', '<Esc>', opts)

-- range-start
map('n', '<C-Space>', 'v', opts)
map('n', '<C-@>', 'v', opts)
map('n', '<Nul>', 'v', opts)

-- cut/copy range
map('v', '<C-w>', 'd', opts)
map('v', '<C-c>', 'y', opts)

-- kill-line
map({ 'i' }, '<C-k>', '<C-o>d$', opts)
map({ 'n' }, '<C-k>', 'd$', opts)

-- yank from buffer
map({ 'i' }, '<C-y>', '<C-o>p', opts)
map({ 'n' }, '<C-y>', 'p', opts)

-- emacs-like cursor
map({ 'n', 'v', 'i', 'c' }, '<C-a>', '<Home>', opts)
map({ 'n', 'v', 'i', 'c' }, '<C-e>', '<End>', opts)

map({ 'n', 'v', 'i', 'c' }, '<C-f>', '<Right>', opts)
map({ 'n', 'v', 'i', 'c' }, '<C-b>', '<Left>', opts)

map({ 'n', 'v', 'i' }, '<C-n>', '<Down>', opts)
map({ 'n', 'v', 'i' }, '<C-p>', '<Up>', opts)

-- delete-char
map({ 'n' }, '<C-d>', 'x', opts)
map({ 'i' }, '<C-d>', '<C-o>x', opts)

-- Clear highlights on return to normal mode (:help hlsearch)
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Add window command to open terminal (`:help CTRL-W)
map({ 'n', 'v', 'i' }, '<C-w><C-;>', '<Cmd>split | term<CR>i', { desc = 'Open terminal' })

-- Easier exit from terminal mode (try :vsplit|term)
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Easier switching with Telescope
local tele = require('telescope.builtin')
map('n', '<leader>fb', tele.buffers, { desc="Find open buffers" })
map('n', '<leader>ff', tele.find_files, { desc="Find files" })
map('n', '<leader>fg', tele.live_grep, { desc="Live grep" })
map('n', '<leader>fm', tele.marks, { desc="Find marks" })
map('n', '<leader>fo', tele.oldfiles, { desc="Find oldfiles" })

-- vim: ts=2 sts=2 sw=2 et
