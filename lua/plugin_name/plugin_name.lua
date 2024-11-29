local module = require(... .. ".module")

---@class MyModule
local M = {}

---@class Config
---@field opt string Your config option
local config = {
    opt = "Hello!",
}

---@type Config
M.config = config

---@param args Config?
M.setup = function(args)
    M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

M.hello = function()
    return module.my_first_function(M.config.opt)
end

return M
