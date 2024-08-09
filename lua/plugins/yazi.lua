return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      "-",
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
    {
      -- Open in the current working directory
      "<leader>-",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory",
    },
  },
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = true,

    -- enable these if you are using the latest version of yazi
    use_ya_for_events_reading = true,
    use_yazi_client_id_flag = true,

    keymaps = {
      show_help = "<f1>",
      open_file_in_horizontal_split = "<c-s>",
      grep_in_directory = "<c-f>",
    },
  },
}
