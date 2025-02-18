return {
  "neovim/nvim-lspconfig",

    dependencies = {
    "williamboman/mason.nvim",
    "hrsh7th/nvim-cmp",  -- Completion plugin
    "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
    "hrsh7th/cmp-buffer",  -- Buffer source for nvim-cmp
    "hrsh7th/cmp-path",  -- Path source for nvim-cmp
    "hrsh7th/cmp-vsnip",  -- Snippet source for nvim-cmp 
    "hrsh7th/vim-vsnip",  -- Vsnip snippet engine 
  },

  config = function()
    local lspconfig = require("lspconfig")
    local mason = require("mason")
    local cmp = require("cmp")

    mason.setup()

    lspconfig.rust_analyzer.setup({})
    lspconfig.clangd.setup({})
    

    cmp.setup({
      completion = {
        completeopt = 'menu,menuone,noinsert',
      },
      snippet = {
        expand = function(args)
          vim.fn["vsnip#expand"](args.body)  
        end,
      },
      mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, 
        { name = 'buffer' },
        { name = 'path' },
      },
    })

  end,
}
