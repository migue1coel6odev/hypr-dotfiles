
return {
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', config = function() 

        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr, remap = false})

            local opts = { buffer = bufnr, remap = false}

            vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
        end)

        require('lspconfig').lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = { globals = { 'vim' } } }
                }
            })

            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = {'tsserver', 'eslint'},
                handlers = {
                    lsp_zero.default_setup,
                },
            })
        end},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp', config = function () 

            local cmp = require('cmp');
            local cmp_select = { behavior = cmp.SelectBehavior.Select }
            cmp.setup({
                mapping = {
                    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-Space>'] = cmp.mapping.complete(),
                }
            })
        end},
        {'L3MON4D3/LuaSnip'},
    }

