if vim.g.vscode then
    require 'config.options'
else
    require 'config.options'
    require 'config.mappings'
    require 'config.lazy'

    vim.api.nvim_create_autocmd('TextYankPost', {
        desc = 'Highlight when yanking (copying) text',
        group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {
            clear = true
        }),
        callback = function()
            vim.highlight.on_yank()
        end
    })

    vim.notify = require 'notify'
end
