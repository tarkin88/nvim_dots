local present, null_ls = pcall(require, "null-ls")

if not present then
    return
end

local b = null_ls.builtins

local sources = {
    b.completion.spell,
    -- webdev stuff
    b.formatting.prettier.with({
        filetypes = { "html", "markdown", "css" },
        extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
    }),
    -- Lua
    b.formatting.stylua,
    -- Shell
    b.formatting.shfmt,
    b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
    -- pyhton
    b.formatting.black.with({ extra_args = { "--fast", "--line-length", "120" } }),
    b.formatting.isort.with({ extra_args = { "--profile", "black" } }),
    b.diagnostics.pylint.with({
        extra_args = { "--disable=C0114, C0115, W0222" },
    }),
}

null_ls.setup({
    debug = true,
    sources = sources,
})
