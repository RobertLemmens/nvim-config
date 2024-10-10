vim.g.mapleader = " "
vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<C-m>", vim.cmd.SymbolsOutline)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "Q", "<nop>")
-- copy without losing the buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
-- copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- nvim dap debugging
vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F2>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F3>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F4>", ":lua require'dap'.step_out()<CR>")

vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
vim.keymap.set("n", "<leader>de", ":lua require'dapui'.eval()<CR>")
vim.keymap.set("n", "<leader>dv", ":lua require'dapui'.eval(vim.fn.input('Evaluate: '))<CR>")
vim.keymap.set("n", "<leader>dw", ":lua require'dapui'.elements.watches.add(vim.fn.expand('<cword>'))<CR>")

-- neotest
vim.keymap.set("n", "<F1>", ":lua require'neotest'.run.run(vim.fn.expand('%'))<CR>")
vim.keymap.set("n", "<C-h>", ":lua require'neotest'.output()<CR>")

-- trouble
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>Trouble diagnostics toggle<CR>")
vim.keymap.set("n", "<leader>ts", "<cmd>Trouble symbols toggle<CR>")
