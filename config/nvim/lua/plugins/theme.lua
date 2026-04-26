return {
    {
        'maxmx03/fluoromachine.nvim',
        priority = 1000,
        config = function ()
         local fm = require 'fluoromachine'

         fm.setup {
            glow = true,
            theme = 'fluoromachine',
            transparent = true,
         }

         vim.cmd.colorscheme 'fluoromachine'
        end
    },
    
    {
    "samharju/synthweave.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("synthweave")
        -- transparent version
        -- vim.cmd.colorscheme("synthweave-transparent")
    end
}
}

