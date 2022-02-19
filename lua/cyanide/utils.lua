local M = {}

local function highlight(group, properties)
    local bg = properties.bg == nil and "" or "guibg=" .. properties.bg
    local fg = properties.fg == nil and "" or "guifg=" .. properties.fg
    local style = properties.style == nil and "" or "gui=" .. properties.style

    vim.api.nvim_command('hightlight ' .. group .. ' ' .. bg .. ' ' .. fg .. ' ' .. style)

function M.set(object)
  for group, properties in pairs(object) do 
      hightlight(group, properties)
  end
end

return M

end
