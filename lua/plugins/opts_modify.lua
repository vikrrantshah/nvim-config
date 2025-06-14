return {
  { "folke/which-key.nvim", opts = { preset = "classic" } },
  { "neovim/nvim-lspconfig", opts = { inlay_hints = { enabled = false } } },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- Files
      { "<C-p>", LazyVim.pick("files"), desc = "Search Files" },
      { "<leader>sf", LazyVim.pick("files"), desc = "Search Files" },
      { "<leader><leader>", LazyVim.pick("buffers"), desc = "Find buffers" },
      -- Grep
      { "<C-f>", LazyVim.pick("live_grep"), desc = "Search Grep Globally" },
      { "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search Grep in Buffer" },
    },
  },
  {
    "snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            -- show hidden files like .env
            hidden = true,
            -- show files ignored by git like node_modules
            ignored = true,
          },
        },
      },
      dashboard = {
        preset = {
          header = [[
            ▄▄██████████▄▄            
            ▀▀▀   ██   ▀▀▀            
    ▄██▄   ▄▄████████████▄▄   ▄██▄    
  ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄  
 ████▄ ▄███▀              ▀███▄ ▄████ 
███▀█████▀▄████▄      ▄████▄▀█████▀███
██▀  ███▀ ██████      ██████ ▀███  ▀██
 ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀ 
    ███           ▀▀           ███    
    ██████████████████████████████    
▄█  ▀██  ███   ██    ██   ███  ██▀  █▄
███  ███ ███   ██    ██   ███▄███  ███
▀██▄████████   ██    ██   ████████▄██▀
 ▀███▀ ▀████   ██    ██   ████▀ ▀███▀ 
  ▀███▄  ▀███████    ███████▀  ▄███▀  
    ▀███    ▀▀██████████▀▀▀   ███▀    
      ▀    ▄▄▄    ██    ▄▄▄    ▀      
            ▀████████████▀            
]],
          keys = {
            { icon = " ", key = "f", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "p", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "g", desc = "Git", action = ":lua Snacks.lazygit()" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
}
