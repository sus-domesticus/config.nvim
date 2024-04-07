vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.have_nerd_font = true

-- [[ Basic options ]] --
require("options")

-- [[ Basic keymaps ]] --
require("keymaps")

-- [[ Lazy package manager installation ]] --
require("lazy-bootstrap")

-- [[ Plugin installation ]] --
require("lazy-plugins")
