local key_mapper = require('utils.key_mapper').map_key

return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",

        opts = {
            ensure_installed = {
                "lua_ls",
                "csharp_ls",
                "pylsp",
                --"sourcekit"
            },
        },

        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconf = vim.lsp
            lspconf.enable('csharp_ls')
            lspconf.enable('lua_ls')
            lspconf.enable('pylsp')
            lspconf.enable('sourcekit')

            key_mapper('K', lspconf.buf.hover)
            key_mapper('gd', lspconf.buf.definition)
            key_mapper('<leader>ca', lspconf.buf.code_action)
        end
    },
}
