local module = require(... .. ".module")

---@class PluginName
local M = {}

---@class Config
---@field opt string Config option
local config = {
    opt = "Hello World!",
}

---@type Config
M.config = config

---@class ExampleModule
---@return string
M.example = function()
    return module.ex1(M.config.opt)
end

---@param args Config?
M.setup = function(args)
    M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

return M
