require("plugins.custom-keymaps")
local packer = require("core.utils").packer

-- Install your plugins here
return packer.startup(function(use)
    -- base
    use("wbthomason/packer.nvim")
    use("nvim-lua/plenary.nvim")
    use({
        "echasnovski/mini.nvim",
        config = function()
            require("plugins.mini")
        end,
    })
    use("stevearc/dressing.nvim")
    use({
        'declancm/cinnamon.nvim',
        config = function()
            require('cinnamon').setup()
        end
    })
    -- code quality
    use({
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("plugins.treesitter")
        end,
    })
    use({ "p00f/nvim-ts-rainbow",
        after = { "nvim-treesitter" },
        event = { "BufRead", "BufNewFile", "InsertEnter" }
    }
    )
    use({ "andymass/vim-matchup",
        after = { "nvim-treesitter" },
        event = { "BufRead", "BufNewFile", "InsertEnter" }
    })
    -- git
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("plugins.gitsigns")
        end,
    })
    use({ 'neoclide/coc.nvim',
        branch = 'release',
        config = function()
            require("plugins.coc")
        end })

    use({
        "nvim-telescope/telescope.nvim",
        config = function()
            require("plugins.telescope")
        end,
    })
    use({
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
    })
    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("plugins.nvim-tree")
        end,
    })

    -- colorscheme
    use({
        "EdenEast/nightfox.nvim",
        config = function()
            require("plugins.nightfox")
        end,
    })

    -- optimization
    use("nathom/filetype.nvim")
    use("lewis6991/impatient.nvim")
end)
