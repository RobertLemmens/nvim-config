local builtin = require('telescope.builtin')
-- builtin.colorscheme({enable_preview = true})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>th', builtin.colorscheme, {})

vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set("n", "<leader>gws", builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>ge', builtin.diagnostics, {})
