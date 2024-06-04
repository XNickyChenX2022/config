local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()
-- Packer startup function
require("packer").startup(function(use)
    use "wbthomason/packer.nvim" -- Packer manages itself
    use "ggandor/leap.nvim"
    use "kana/vim-textobj-user"
    use "vim-scripts/ReplaceWithRegister"
    use "wellle/targets.vim"
    use "asvetliakov/vim-easymotion"
    use "junegunn/vim-easy-align"
    use "tpope/vim-repeat"
    use "adelarsq/vim-matchit"
    use "sainnhe/gruvbox-material"
    use "farmergreg/vim-lastplace"
    use "bkad/CamelCaseMotion"
    use "xiyaowong/transparent.nvim"
    use "monaqa/dial.nvim"
    use {
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup()
        end
    }
    use {
        "chrisgrieser/nvim-various-textobjs",
        config = function()
            require("various-textobjs").setup({
                lookForwardSmall = 2,
                lookForwardBig = 0,
                useDefaultKeymaps = false,
            })
        end,
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

-- Highlight settings
vim.api.nvim_set_hl(0, 'QuickScopePrimary', {
    fg = '#afff5f',
    underline = true,
    ctermfg = 155,
    cterm = { underline = true }
})

vim.api.nvim_set_hl(0, 'QuickScopeSecondary', {
    fg = '#5fffff',
    underline = true,
    ctermfg = 81,
    cterm = { underline = true }
})

-- Lualine setup
-- Autocommand to recompile Packer when plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
