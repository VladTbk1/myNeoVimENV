-------------- General -----------------
vim.opt.nu = true
vim.opt.relativenumber = false
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "



-------------- KeyBindings -----------------
vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)
-- Map Enter to create a new line and stay in Normal mode
vim.keymap.set('n', '<CR>', 'o<Esc>', { noremap = true, silent = true })

----- Special Harppon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end)

vim.keymap.set("n", "<C-a>", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

----- Special Fugtive

vim.keymap.set("n", "<leader>g", vim.cmd.Git)
----- Special Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

----- Special Telescope

----- Special Nvimtree
-- local api = require "nvim-tree.api"
-- vim.keymap.set('n', '<leader>t', api.tree.toggle)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

----- Docker & Database
vim.keymap.set("n", "<leader>dk", "<cmd>lua docker_client_toggle()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>db", "<cmd>:DBUIToggle<CR>", { noremap = true, silent = true })
-----------------------------------------------------------------------------
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.cmd [[command! Format execute 'lua vim.lsp.buf.format()']]
vim.keymap.set('n', '<Esc>', ':Format<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<Esc>', '<Esc>:w<CR>:Format<CR>', { noremap = true, silent = true })


vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.clear_breakpoints()<CR>")

vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F6>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F7>", ":lua require'dap'.step_back()<CR>")
vim.keymap.set("n", "<F9>", ":lua require'dapui'.toggle()<CR>")
vim.keymap.set("n", "<F10>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F11>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<F12>", ":lua require'dap'.terminate()<CR>")
