---@class CustomModule
local M = {}

---@return string
M.my_first_function = function(greeting)
    vim.print("Hello World!")
    return greeting
end

return M
