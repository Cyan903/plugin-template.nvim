local plugin = require("plugin_name")

describe("setup", function()
    local test = "hi world"

    it("works with " .. test, function()
        plugin.setup({ opt = test })
        assert(plugin.example() == "I'm ex1 " .. test, "ex1 test")
    end)
end)
