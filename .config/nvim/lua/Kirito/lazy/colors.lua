function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    -- Brightburn theme
    {
        "erikbackman/brightburn.vim",
    },

    -- Tokyo Night theme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        config = function()
            ColorMyPencils("tokyonight")
            require("tokyonight").setup({
                style = "storm", -- Can be "storm", "moon", "night", or "day"
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "dark",
                    floats = "dark",
                },
            })
        end
    },

    -- Gruvbox theme
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true,
                contrast = "", -- Can be "hard", "soft", or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end,
    },

    -- Rose Pine theme
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            ColorMyPencils("rose-pine")
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },

    -- Solarized Osaka theme
    {
        "craftzdog/solarized-osaka.nvim",
        name = "solarized-osaka",
        config = function()
            ColorMyPencils("solarized-osaka")
            require("solarized-osaka").setup({
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true,
                styles = {
                    comments = { italic = true },
                    keywords = { italic = true },
                    functions = {},
                    variables = {},
                    sidebars = "dark",
                    floats = "dark",
                },
                sidebars = { "qf", "help" },
                day_brightness = 0.3,             -- Adjusts brightness for Day style
                hide_inactive_statusline = false, -- Hides inactive statuslines
                dim_inactive = false,             -- dims inactive windows
                lualine_bold = false,             -- section headers in lualine will be bold if true
            })
        end
    },
}
