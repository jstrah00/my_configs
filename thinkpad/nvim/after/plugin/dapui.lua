require("dapui").setup({
    layouts = {
        {
            elements = {
                { id = "breakpoints", size = 0.3 }, 
                { id = "scopes", size = 0.7 }, 
            },
            size = 40,
            position = "left"
        },
        {
            elements = {
                "console",
                "repl"
            },
            size = 10,
            position = "bottom"
        }
    }
})
local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
