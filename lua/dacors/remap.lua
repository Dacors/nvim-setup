local nnoremap = require("dacors.keymap").nnoremap
--some shit for navigation
nnoremap("<leader>t", "<cmd>:NERDTreeFind<CR>")
nnoremap("<leader>w", "<cmd>:w<CR>")
nnoremap("<leader>q", "<cmd>:q!<CR>")
vim.keymap.set("n", "<leader>;", "<C-W>w", { noremap = false, silent = true })

--some shit for terminal
nnoremap("<leader>x", "<cmd>:10sp term://zsh<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true }) 

--some shit for golang
nnoremap("<leader>d", "<cmd>:GoDef<CR>")
nnoremap("<leader>f", "<Plug>(go-def-vertical)")
nnoremap("<leader>i", "<cmd>:GoImplements<CR>")
nnoremap("<leader>c", "<cmd>:GoCoverage<CR>")
nnoremap("<leader>1", "<cmd>:GoAlternate<CR>")
nnoremap("<leader>2", "<cmd>:GoTest<CR>")
nnoremap("<leader>3", "<cmd>:GoBuild<CR>")
nnoremap("<leader>4", ":10sp term://zsh <CR> igo test ./...<CR>")
nnoremap("<leader>5", ":10sp term://zsh <CR> ifury create-version ")
nnoremap("<leader>6", ":10sp term://zsh <CR> igo get -u ")

--some shit for Git
nnoremap("<leader>g", "<cmd>:G<CR>")
nnoremap("<leader>b", "<cmd>:G blame<CR>")

--some shit for resize
nnoremap("<leader>j", "<cmd>:resize -5<CR>")
nnoremap("<leader>k", "<cmd>:resize +5<CR>")
nnoremap("<leader>l", "<cmd>:vertical resize -20<CR>")
nnoremap("<leader>h", "<cmd>:vertical resize +20<CR>")

--some shit for telescope
nnoremap("<leader>m", "<cmd>:Telescope find_files<CR>")
nnoremap("<leader>n", "<cmd>:Telescope live_grep<CR>")

--some shit for coc
function _G.trigger_coc_autocomplete()
    if vim.fn["coc#pum#visible"]() > 0 then 
        return vim.fn["coc#_select_confirm"]()
    end
    return ";"
end

vim.keymap.set("i", ";", "v:lua.trigger_coc_autocomplete()", { expr = true, noremap = false }) 
