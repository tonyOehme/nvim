return {
    "HiPhish/rainbow-delimiters.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter"
    },
    config = function()
        require('rainbow-delimiters.setup').setup({
            query = {
                [''] = 'rainbow-delimiters',
                lua = 'rainbow-blocks',
            },
            priority = {
                [''] = 110,
                lua = 210,
            },
            highlight = {
                'RainbowDelimiterRed',
                'RainbowDelimiterYellow',
                'RainbowDelimiterBlue',
                'RainbowDelimiterOrange',
                'RainbowDelimiterGreen',
                'RainbowDelimiterViolet',
                'RainbowDelimiterCyan',
            }
        })
    end
}
