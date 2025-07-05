require("dap-python").setup("python3")

require('dap').set_log_level('DEBUG')

table.insert(require('dap').configurations.python, {
    type = 'python';
    request = 'launch';
    name = "Python file";
    program = "${file}";  
    pythonPath = function()
      return '/usr/bin/python3'
    end;
})
table.insert(require('dap').configurations.python, {
    type = 'python';
    request = 'launch';
    name = "FastAPI";
    module = 'uvicorn';
    args = { "app.main:app", "--host", "127.0.0.1", "--port", "8000" };
    pythonPath = function()
      return vim.fn.expand("${workspaceFolder}/venv/bin/python3")  
    end;
})
table.insert(require('dap').configurations.python, {
    type = 'python';
    request = 'launch';
    name = "FastAPI (src.main)";
    module = 'uvicorn';
    args = { "src.main:main", "--host", "127.0.0.1", "--port", "9000" };
    pythonPath = function()
      return vim.fn.expand("${workspaceFolder}/venv/bin/python3")  
    end;
})
table.insert(require('dap').configurations.python, {
    type = 'python';
    request = 'launch';
    name = "FastAPI (PDM run dev)";
    module = 'pdm';
    args = { "run", "dev" };
})
-- If using the above, then `python -m debugpy --version`
-- must work in the shell

vim.keymap.set('n', '<leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<leader>n', function() require('dap').step_over() end)
vim.keymap.set('n', '<leader>N', function() require('dap').step_into() end)
vim.keymap.set('n', '<leader>m', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>M', function() require('dap').step_out() end)

-- TEST
vim.keymap.set('n', '<leader>x', function()
  print(vim.fn.expand("${workspaceFolder}"))
end)
