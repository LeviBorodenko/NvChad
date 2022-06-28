local M = {}

M.general = {
  i = {
    ["<C-j>"] = {"<C-o>o", " move down creating a new line"},
    ["<C-k>"] = {"<C-o>O", " move up creating a new line"},
    ["<C-S>"] = {"<cmd> w <CR>", "﬚  save file" }
  }
}


local ft_cmds = {
  python = ". ~/.config/nvim/scripts/load_python_venv.sh"
}

M.nvterm = {
   n = {
      -- toggle in terminal mode
      ["<A-i>"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").toggle("float")
            require("nvterm.terminal").send(cmd)
         end,
         "   toggle floating term",
      },
    }
  }
M.nvterm = {
   t = {
      -- toggle in terminal mode
      ["<A-i>"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").toggle "float"
            require("nvterm.terminal").send(cmd)
         end,
         "   toggle floating term",
      },

      ["<A-h>"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").toggle "horizontal"
            require("nvterm.terminal").send(cmd)
         end,
         "   toggle horizontal term",
      },

      ["<A-v>"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").toggle "vertical"
            require("nvterm.terminal").send(cmd)
         end,
         "   toggle vertical term",
      },
   },

   n = {
      -- toggle in normal mode
      ["<A-i>"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").toggle "float"
            require("nvterm.terminal").send(cmd)
         end,
         "   toggle floating term",
      },

      ["<A-h>"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").toggle "horizontal"
            require("nvterm.terminal").send(cmd)
         end,
         "   toggle horizontal term",
      },

      ["<A-v>"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").toggle "vertical"
            require("nvterm.terminal").send(cmd)
         end,
         "   toggle vertical term",
      },

      -- new

      ["<leader>h"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").new "horizontal"
            require("nvterm.terminal").send(cmd)
         end,
         "   new horizontal term",
      },

      ["<leader>v"] = {
         function()
            local cmd = ft_cmds[vim.bo.filetype]
            require("nvterm.terminal").new "vertical"
            require("nvterm.terminal").send(cmd)
         end,
         "   new vertical term",
      },
   },
}

return M
