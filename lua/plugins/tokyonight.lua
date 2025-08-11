return {
    -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require('tokyonight').setup {
            transparent = true, -- Enable transparency by default
            styles = {
                comments = { italic = false }, -- Disable italics in comments
                sidebars = "transparent", -- Transparency for sidebars (e.g., NvimTree)
                floats = "transparent", -- Transparency for floating windows (e.g., Telescope)
            },
        }
        vim.cmd.colorscheme 'tokyonight-night' -- Set the colorscheme

        local bg_transparent = true

        local toggle_transparency = function()
            bg_transparent = not bg_transparent
            require('tokyonight').setup {
                transparent = bg_transparent, -- Toggle transparency
                styles = {
                    comments = { italic = false }, -- Keep comments non-italic
                    sidebars = bg_transparent and "transparent" or "dark", -- Toggle sidebar transparency
                    floats = bg_transparent and "transparent" or "dark", -- Toggle float transparency
                },
            }
            vim.cmd.colorscheme 'tokyonight-night' -- Reload colorscheme to apply changes
        end

        vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
        vim.cmd.colorscheme 'tokyonight-night' -- Reload colorscheme to apply changes
    end,
}

