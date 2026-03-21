
local imsel = "im-select" -- or abs-path
local im_en = "com.apple.keylayout.ABC"
local im_jp = "com.apple.inputmethod.Kotoeri.RomajiTyping.Japanese"

local im_off = function()
  vim.fn.jobstart({ imsel, im_en }, { detach = true })
end

local im_on = function()
  vim.fn.jobstart({ imsel, im_jp }, { detach = true })
end

vim.api.nvim_create_autocmd("InsertLeave", { callback = im_off })
vim.api.nvim_create_autocmd("CmdlineLeave", { callback = im_off })

