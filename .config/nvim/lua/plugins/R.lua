return {
    { 
       "R-nvim/R.nvim",
         -- Only required if you also set defaults.lazy = true
        lazy = false,
        -- R.nvim is still young and we may make some breaking changes from time
        -- to time. For now we recommend pinning to the latest minor version
        -- like so:
        version = "~0.1.0",
        config = function()
        -- Create a table with the options to be passed to setup()
            local opts = {
                -- R_path = "/home5/attilio/programs/miniconda3/envs/rna-seq/bin/"
                -- pipe_keymap = ""
            }
            require("r").setup(opts)
        end,

    },
    {
        "R-nvim/cmp-r",
        {
            "hrsh7th/nvim-cmp",
            config = function()
                require("cmp").setup({ sources = {{ name = "cmp_r" }}})
                require("cmp_r").setup({})
            end,
        },
    },
    "gaalcaras/ncm-R",
    "ncm2/ncm2",
    "roxma/nvim-yarp"

}

