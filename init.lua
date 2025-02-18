vim.g.mapleader = " "

require("config.lazy")

vim.o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)


vim.opt.number = true            
vim.opt.relativenumber = true    
vim.opt.expandtab = true        
vim.opt.shiftwidth = 4         
vim.opt.tabstop = 4              
vim.opt.autoindent = true       
vim.opt.smartindent = true       
vim.opt.hlsearch = true         
vim.opt.incsearch = true       
vim.opt.termguicolors = true     
