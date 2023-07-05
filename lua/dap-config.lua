local dap = require("dap")
local dapui = require("dapui")
local wk = require("which-key")

dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
    vim.g["dap_open"] = true
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
    vim.g["dap_open"] = false
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
    vim.g["dap_open"] = false
end

function toggle_dap()
    if vim.g["dap_open"] then
        dap.terminate()
    else
        dap.continue()
    end
end

vim.api.nvim_create_user_command("ToggleDap", toggle_dap, {})
vim.keymap.set("n", "<leader>bd", toggle_dap, {})
vim.keymap.set("n", "<leader>bb", dap.toggle_breakpoint, {})

wk.register({
    ["<leader>b"] = {
        "+Debug...",
    },
    ["<leader>bd"] = {
        "Toggle debugger",
    },
    ["<leader>bb"] = {
        "Toggle breakpoint",
    },
})

vim.fn.sign_define(
    "DapBreakpoint",
    { text = "🟥", texthl = "", linehl = "", numhl = "" }
)
vim.fn.sign_define(
    "DapStopped",
    { text = "▶️", texthl = "", linehl = "", numhl = "" }
)
