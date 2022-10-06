vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.vb = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.mapleader = " "

--some shit for NERDTree
vim.g.NERDTreeShowLineNumbers = 1

--some shit for golang
vim.g.go_highlight_variable_assignments = 1
vim.g.go_highlight_function_parameters = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_build_constraints = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_operators = 1

--some shit for telescope
require("telescope").setup({
	defaults = {
		initial_mode = 'insert',
	},
})

--some shit for coc
vim.opt.pumheight = 3

--some shit for status line
vim.g.airline_section_a = '%{strftime("%c")}'
vim.g.airline_section_b = '%{FugitiveStatusline()}'
vim.g.airline_theme = 'deus'
vim.g.airline_section_c_only_filename = 1
vim.g.airline_stl_path_style = 'short'

--some shit for catpuccin
require("catppuccin").setup({
	transparent_background = false,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = { "italic" },
		variables = {},
		numbers = {},
		booleans = {},
		properties = { "italic" },
		types = { "italic" },
		operators = {},
	},
	integrations = {
		-- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
	},
	color_overrides = {
        mocha = {
        },
    },
	highlight_overrides = {},
})

--some shit for treesitter
require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
  },
})
