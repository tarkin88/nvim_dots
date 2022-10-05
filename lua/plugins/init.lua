require("plugins.keymaps")
local packer = require("core.utils").packer

-- Install your plugins here
return packer.startup(function(use)
    -- base
    use('wbthomason/packer.nvim')
    use("nvim-lua/plenary.nvim")
    use("stevearc/dressing.nvim")
    -- code quality
    use({"nvim-treesitter/nvim-treesitter",
    config = function()
        require("plugins.treesitter")
    end})
    -- navigation
    use({"nvim-telescope/telescope.nvim",
    config = function()
        require("plugins.telescope")
    end
    })
    use({
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make"
    })
    use({"kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
        require("plugins.nvim-tree")
    end
	})

    -- colorscheme
    use ({"EdenEast/nightfox.nvim",
    config = function()
	    require "plugins.nightfox"
    end })
    -- lsp



        -- optimization
    use('nathom/filetype.nvim')
    use('tweekmonster/startuptime.vim')
    use('lewis6991/impatient.nvim')
    end)
