--
-- Options (:help option-list)
--

-- Space as the leader key (:help mapleader)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- linenumber
vim.o.number = true
-- vim.o.relativenumber = true

vim.o.mouse = 'a' -- mouse mode (auto)
vim.o.showmode = false -- hide mode and just see status line

-- Sync clipboard between OS (:help clipboard)
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Keep indent level for wrapped line
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Show whitespace (:help list, listchars)
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Ask to save on exit
vim.o.confirm = true

-- Move cursor prev/next line for following operation
vim.opt.whichwrap = "h,l,<,>,[,],~"

-- load plugins through lazy.nvim
require 'plugin'

-- additional manual configurations
require 'im-select'
require 'config.autocmd'
require 'config.keymaps'

-- vim: ts=2 sts=2 sw=2 et
