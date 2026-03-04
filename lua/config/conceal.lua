local M = {}

function M.setup()
    -- Common mathematical superscripts and subscripts
    local conceal_map = {
        ["\\^0"] = "⁰", ["\\^1"] = "¹", ["\\^2"] = "²", ["\\^3"] = "³",
        ["\\^4"] = "⁴", ["\\^5"] = "⁵", ["\\^6"] = "⁶", ["\\^7"] = "⁷",
        ["\\^8"] = "⁸", ["\\^9"] = "⁹", ["\\^n"] = "ⁿ", ["\\^i"] = "ⁱ",
        ["\\^x"] = "ˣ",
        ["_0"] = "₀", ["_1"] = "₁", ["_2"] = "₂", ["_3"] = "₃",
        ["_4"] = "₄", ["_5"] = "₅", ["_6"] = "₆", ["_7"] = "₇",
        ["_8"] = "₈", ["_9"] = "₉", ["_n"] = "ₙ", ["_i"] = "ᵢ",
    }

    -- Apply conceal rules to specific filetypes where math notation is common
    vim.api.nvim_create_autocmd("FileType", {
        pattern = { "python", "lua", "cpp", "c", "rust", "circom", "markdown" },
        callback = function()
            for pattern, replacement in pairs(conceal_map) do
                vim.cmd(string.format([[syntax match MathConceal /%s/ conceal cchar=%s]], pattern, replacement))
            end
            
            -- Also common operators if you want them even prettier
            -- syntax match MathOperator /<=/ conceal cchar=≤
            -- syntax match MathOperator />=/ conceal cchar=≥
            -- syntax match MathOperator /!=/ conceal cchar=≠
        end,
    })

    -- Highlight group for concealed math to keep it subtle
    vim.api.nvim_set_hl(0, "MathConceal", { fg = "#89b4fa" }) -- Catppuccin Blue
end

return M
