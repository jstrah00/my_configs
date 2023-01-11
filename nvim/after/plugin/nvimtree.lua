require("nvim-tree").setup({
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
  }
})
vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)
