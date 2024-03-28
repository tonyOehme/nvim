--return {
--    "olimorris/onedarkpro.nvim",
--    priority = 1000, -- Ensure it loads first
--    config = function()
--        require("onedarkpro").setup({
--            colors = {
--                black = "#0c0e15",
--                bg = "#1a212e",
--                bg1 = "#21283b",
--                bg2 = "#283347",
--                bg3 = "#2a324a",
--                bg_d = "#141b24",
--                bg_blue = "#54b0fd",
--                bg_yellow = "#f2cc81",
--                fg = "#93a4c3",
--                purple = "#c75ae8",
--                green = "#8bcd5b",
--                orange = "#dd9046",
--                blue = "#41a7fc",
--                yellow = "#efbd5d",
--                cyan = "#34bfd0",
--                red = "#f65866",
--                grey = "#455574",
--                light_grey = "#6c7d9c",
--                dark_cyan = "#1b6a73",
--                dark_red = "#992525",
--                dark_yellow = "#8f610d",
--                dark_purple = "#862aa1",
--                diff_add = "#27341c",
--                diff_delete = "#331c1e",
--                diff_change = "#102b40",
--                diff_text = "#1c4a6e",
--            },               -- Override default colors or create your own
--            highlights = {}, -- Override default highlight groups or create your own
--
--            options = {
--                cursorline = false,                 -- Use cursorline highlighting?
--                transparency = false,               -- Use a transparent background?
--                terminal_colors = true,             -- Use the theme's colors for Neovim's :terminal?
--                lualine_transparency = true,        -- Center bar transparency?
--                highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
--            }
--        })
--        vim.cmd("colorscheme onedark_vivid")
--    end
--
--}
--
return {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
        -- Lua
        require('onedark').setup {
            -- Main options --
            style = 'deep',       -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
            transparent = false,  -- Show/hide background
            term_colors = true,   -- Change terminal color as per the selected theme style
            ending_tildes = true, -- Show the end-of-buffer tildes. By default they are hidden
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

            -- Change code style ---
            -- Options are italic, bold, underline, none
            -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
            code_style = {
                comments = 'none',
                keywords = 'none',
                functions = 'none',
                strings = 'none',
                variables = 'none'
            },

            -- Custom Highlights --
            colors = {}, -- Override default colors
            highlights = {}, -- Override highlight groups

            -- Plugins Config --
            diagnostics = {
                darker = true, -- darker colors for diagnostic
                undercurl = true, -- use undercurl instead of underline for diagnostics
                background = true, -- use background color for virtual text
            },
        }
        require('onedark').load()
    end

}
