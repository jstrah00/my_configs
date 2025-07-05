vim.keymap.set("n", "<leader>gs", ":Git status<CR>")
vim.keymap.set("n", "<leader>ga", ":Git add %<CR>")
vim.keymap.set("n", "<leader>gr", ":Git restore --staged %<CR>")
vim.keymap.set("n", "<leader>ga.", ":Git add .<CR>")
function commitPrompt()
    -- Define la función para mostrar el prompt y ejecutar el comando de commit
    local message = vim.fn.input("Commit> ") -- Muestra el prompt y obtiene el mensaje del usuario
    -- Ejecuta el comando de commit con el mensaje ingresado y captura la salida
    local output = vim.fn.systemlist("git commit -m '" .. message .. "'")
    
    -- Muestra la salida en el área de mensajes de Neovim
    for _, line in ipairs(output) do
        vim.api.nvim_out_write(line .. "\n")
    end
end
-- function commitPrompt()
    -- local message = vim.fn.input("Commit> ")
    -- vim.fn.system("Git commit -m '" .. message .. "'")
-- end
vim.keymap.set("n", "<leader>gc", ":lua commitPrompt()<CR>")
