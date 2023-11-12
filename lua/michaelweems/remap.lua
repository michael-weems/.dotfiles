-- fat cursor in insert mode
vim.g.mapleader = " "

-- project explorer view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted lines up and down with shift + j / shift + k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append below line to current line while keeping cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- Jump halfway up and down document while keeping cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- ? not sure
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ? forgot what this does
vim.keymap.set("x", "<leader>p", [["_dP]])

-- 'y' --> yank to vim clipboard
-- '<leader>y' --> yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- '<leader>d' actions --> send deleted to void instead of buffer
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- ? not sure what this does....
vim.keymap.set("i", "<C-c>", "<Esc>")

-- ? apparently I should never be in 'Q' mode
vim.keymap.set("n", "Q", "<nop>")

-- Jump between projects! this is cool
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- ? possibly format the document?
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- ? what do these do?
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- ? what does this do?
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- set a file's permissions to allow it to be executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- ? not sure what this does
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/michaelweems/packer.lua<CR>");

-- ? what?
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- shortcut to sourcing a file or "shouting out" a file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

