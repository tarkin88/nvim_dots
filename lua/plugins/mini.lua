require("mini.align").setup()
require("mini.bufremove").setup()
require("mini.comment").setup()
require("mini.cursorword").setup()
require("mini.trailspace").setup()

require("mini.tabline").setup(
    {
        show_icons = true,
        set_vim_settings = true,
        tabpage_section = "left"
    }
)

local starter = require "mini.starter"
local function header()
    return [[
███    ██ ███████  ██████  ██    ██ ██ ███    ███ 
████   ██ ██      ██    ██ ██    ██ ██ ████  ████ 
██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██ 
██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██ 
██   ████ ███████  ██████    ████   ██ ██      ██ 
                                                  

  ]]
end

starter.setup(
    {
        evaluate_single = true,
        header = header,
        items = {
            starter.sections.recent_files(10, true),
            starter.sections.recent_files(5, false),
            starter.sections.sessions(5, true),

            starter.sections.builtin_actions(),
        },
        content_hooks = {
            -- starter.gen_hook.adding_bullet(),
            starter.gen_hook.indexing("all", { "Builtin actions" }),
            starter.gen_hook.padding(10, 3),
            starter.gen_hook.aligning('left', 'top'),

        },
    }
)

require("mini.indentscope").setup({
    draw = { delay = 90, animation = require("mini.indentscope").gen_animation "quadraticIn" },
    options = {
        border = 'both',
        indent_at_cursor = true,
        try_as_border = false,
    },
    symbol = "▏",
})
