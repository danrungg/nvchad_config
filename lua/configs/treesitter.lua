local options = {
    ensure_installed = {
        "fish",
        "lua",
        "luadoc",
        "markdown",
        "printf",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
        "rust",
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
