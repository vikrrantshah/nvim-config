-- Others
local function openUndotree()
  vim.cmd.UndotreeToggle()
  vim.cmd.UndotreeFocus()
end
vim.keymap.set("n", "<leader>ut", openUndotree, { desc = "[U]ndo [T]ree" })

local function showCompletions()
  require("blink.cmp").show_and_insert({})
end
vim.keymap.set("i", "<C-p>", showCompletions)

local function showLazygit()
  Snacks.lazygit()
end
vim.keymap.set("n", "<C-g>", showLazygit)

-- LSP
vim.keymap.set("n", "<leader>r", "", { desc = "+replace" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Name (Rename Symbol)" })

-- Move half page and center cursor to screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
