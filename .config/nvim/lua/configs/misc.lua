local M = {}

M.qftf = function(info)
    local list

    if info.quickfix == 1 then
        list = vim.fn.getqflist({ id = info.id, items = 1, qfbufnr = 1 })
    else
        list = vim.fn.getloclist(info.winid, { id = info.id, items = 1, qfbufnr = 1 })
    end

    local lines = {}

    for i = info.start_idx, info.end_idx do
        table.insert(lines, list.items[i].text)
    end

    return lines
end

local function session_name ()
    local dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/")
    local path = dir .. vim.fn.getcwd():gsub("/", "%%") .. ".vim"
    return vim.fn.fnameescape(path)
end

M.save_session = function ()
    vim.ui.input({ prompt = "Save session? " },
        function (input)
            if input == "y" then
                vim.cmd("mks! " .. session_name())
                print("Saved session")
            else
                print(" ")
            end
        end
    )
end

M.restore_session = function ()
    local path = session_name()
    if path and vim.fn.filereadable(path) ~= 1 then
        vim.cmd("so " .. path)
        print("Restored session")
    else
        print("No session to restore")
    end
end

return M
