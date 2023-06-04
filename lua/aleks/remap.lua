local nnoremap = require("aleks.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ff", require('telescope.builtin').find_files, {})
nnoremap("<leader>fg", require('telescope.builtin').live_grep, {})
nnoremap("<leader>fb", require('telescope.builtin').buffers, {})
nnoremap("<leader>fh", require('telescope.builtin').help_tags, {})
nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
