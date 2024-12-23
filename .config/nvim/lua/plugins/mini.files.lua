return {
    'echasnovski/mini.files',
    version = false,
    deps = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            permanent_delete = false
        },
    },

    config = function(_, opts)
        require("mini.files").setup(opts)

        local show_dotfiles = true

        local filter_show = function(fs_entry)
            return true
        end

        local filter_hide = function(fs_entry)
            return not vim.startswith(fs_entry.name, ".")
        end

        local toggle_dotfiles = function()
            show_dotfiles = not show_dotfiles
            local new_filter = show_dotfiles and filter_show or filter_hide
            require("mini.files").refresh({ content = { filter = new_filter } })
        end

        vim.api.nvim_create_autocmd("User", {
            pattern = "MiniFilesBufferCreate",
            callback = function(args)
                local buf_id = args.data.buf_id


                vim.keymap.set(
                    "n",
                    opts.mappings and opts.mappings.toggle_hidden or "g.",
                    toggle_dotfiles,
                    { buffer = buf_id, desc = "Toggle hidden files" }
                )
            end
        })
    end,
    keys = {
        { "<leader>mf", function() MiniFiles.open() end, desc = "MiniFiles open" },
    }
}
