require("mini.indentscope").setup({
    draw = { delay = 90, animation = require("mini.indentscope").gen_animation "quadraticIn" },
    options = {
        border = 'both',
        indent_at_cursor = true,
        try_as_border = false,
    },
    symbol = "▏",
})
