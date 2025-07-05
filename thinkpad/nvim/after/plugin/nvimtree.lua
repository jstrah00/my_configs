require("nvim-tree").setup({
   -- open_on_setup = true,
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  actions = {
      open_file = {
          quit_on_open = true;
      }
  },
  update_focused_file = {
      enable = true,
      update_cwd = true,
      ignore_list = {},
  },
  view = {
      number = true,
      relativenumber = true,
  }
})
vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end


vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
