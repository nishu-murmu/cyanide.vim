vim.api.nvim_command('hi clear')
if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
end

vim.o.background = 'dark'
vim.o.termguicolors = true
vim.g.colors_name = 'cyanide'

local util = require('cyanide.utils')
c = require('cyanide.palette')
local highlights = require('cyanide.highlights')
local treesitter = require('cyanide.treesitter')
local whichkey = require('cyanide.whichkey')

local objects = {
  hightlights, treesitter, whichkey
}

for _, object in ipairs(objects) do 
    util.set(object)
end
