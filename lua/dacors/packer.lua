vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'folke/tokyonight.nvim'
	use 'fatih/vim-go'
	use 'preservim/nerdtree'
	use 'tpope/vim-fugitive'
    use 'rbong/vim-flog'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'BurntSushi/ripgrep'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'gcmt/taboo.vim'
	use 'rakr/vim-one'
	use 'sonph/onehalf'
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'nvim-treesitter/nvim-treesitter'
    use {'neoclide/coc.nvim', branch = 'release'}
end)
