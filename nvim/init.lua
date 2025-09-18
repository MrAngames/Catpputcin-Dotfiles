-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- последняя стабильная ветка
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- подключаем плагины через lazy
require("lazy").setup({
  {
  "catppuccin/nvim",
  name = "catppuccin",  -- обязательно, чтобы можно было легко переключать тему
  priority = 1000,       -- загружается первой, чтобы тема применялась сразу
  opts = {
    flavour = "mocha",   -- варианты: latte, frappe, macchiato, mocha
    background = {       -- светлая/тёмная для разных режимов
      light = "latte",
      dark = "mocha",
    },
    transparent_background = false,
    term_colors = true,
    styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
    },
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      lsp_trouble = true,
      treesitter = true,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
  },

  -- LSP менеджер
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  -- автодополнение
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "L3MON4D3/LuaSnip",

  -- автопары
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  
})

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "rust_analyzer" },
}

-- LSP для Rust
local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
}

local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  }),
})
vim.opt.clipboard = "unnamedplus"

