return {
	-- add plugins
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    ensure_installed = {
      "c", "lua", "vim",
      "vimdoc", "query",
      "markdown",
      "markdown_inline"
    },
    auto_install = true,
  },
  {
		"nvim-lua/plenary.nvim"
	},
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    open_mapping = [[c-_]],
    opts = {
      --[[ things you want to change go here]]
    }
  },
	{
		dir = "/Users/kuzekai/WorkSpace/super-commit.nvim"
	},
  {
    "kylechui/nvim-surround",
    version = '*',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      stiffness = 0.8,
      trailing_stiffness = 0.5,
      distance_stop_animating = 0.5,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    lazy = false, -- neo-tree will lazily load itself
    ---@module "neo-tree"
    ---@type neotree.Config?
    keys = {
      { '__', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
      -- fill any relevant options here
      filesystem = {
        enabled = true,
      },
      filtered_items = {
        visivle = true,
        hide_dotfiles = false,
        hide_gitignore = false,
      },
      hijack_netrw_behavior = 'open_default',
      window = {
        mappings = {
          ['__'] = 'close_window',
        },
      },
    },
  },
  {
  },
}
