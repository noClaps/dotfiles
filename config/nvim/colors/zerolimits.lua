local colors = {
    background = "#222222",
    elevatedBackground = "#333333",
    activeBackground = "#282828",
    text = "#cccccc",
    mutedText = "#aaaaaa",
    extraMutedText = "#666666",
    red = "#ea3c65",
    green = "#64d970",
    yellow = "#fedf7b",
    lightYellow = "#fff5d8",
    blue = "#3984f2",
    accent = "#ff732e",
    transparent = "#0000",
}

local syntaxColors = {
    accent = "#ff732e",
    red = "#ff6b68",
    orange = "#ff9f5b",
    green = "#83d288",
    blue = "#3984f2",
    lightBlue = "#99c7ff",
    purple = "#bf89ff",
    grey = "#666666",
    lightGrey = "#aaaaaa",
    white = "#cccccc"
}

local groups = {
    -- base
    Normal = { fg = colors.text, bg = colors.background },
    NormalFloat = { fg = colors.text, bg = colors.elevatedBackground },
    Cursor = { fg = colors.accent, bg = colors.accent },
    StatusLine = { fg = colors.mutedText, bg = colors.activeBackground },
    StatusLineNC = { fg = colors.extraMutedText, bg = colors.background },
    Visual = { bg = colors.accent },

    -- syntax
    ["@attribute"] = { fg = syntaxColors.green },
    ["@boolean"] = { fg = syntaxColors.accent },
    ["@comment"] = { fg = syntaxColors.grey },
    ["@constant"] = { fg = syntaxColors.lightBlue },
    ["@constructor"] = { fg = syntaxColors.orange },
    ["@emphasis"] = { italic = true },
    ["@emphasis.strong"] = { bold = true },
    ["@enum"] = { fg = syntaxColors.orange },
    ["@function"] = { fg = syntaxColors.purple },
    ["@keyword"] = { fg = syntaxColors.red },
    ["@label"] = { fg = syntaxColors.lightBlue },
    ["@link_text"] = { fg = syntaxColors.accent },
    ["@link_uri"] = { fg = syntaxColors.blue },
    ["@number"] = { fg = syntaxColors.accent },
    ["@operator"] = { fg = syntaxColors.lightGrey },
    ["@preproc"] = { fg = syntaxColors.red },
    ["@property"] = { fg = syntaxColors.green },
    ["@punctuation"] = { fg = syntaxColors.grey },
    ["@punctuation.bracket"] = { fg = syntaxColors.grey },
    ["@punctuation.delimiter"] = { fg = syntaxColors.grey },
    ["@punctuation.list_marker"] = { fg = syntaxColors.grey },
    ["@string"] = { fg = syntaxColors.orange },
    ["@string.escape"] = { fg = syntaxColors.lightGrey },
    ["@tag"] = { fg = syntaxColors.red },
    ["@text.literal"] = { fg = syntaxColors.orange },
    ["@title"] = { bold = true },
    ["@type"] = { fg = syntaxColors.orange },
    ["@variable"] = { fg = syntaxColors.white },

    -- diagnostics
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.blue },
    DiagnosticHint = { fg = colors.extraMutedText },

    -- oil
    OilDir = { fg = colors.blue },
    OilDirHidden = { fg = colors.extraMutedText },
    OilFileHidden = { link = "OilDirHidden" },
    OilLinkHidden = { link = "OilDirHidden" },
    OilLinkTargetHidden = { link = "OilDirHidden" },

    OilGitAdded = { fg = colors.green },
    OilGitModified = { fg = colors.yellow },
    OilGitRenamed = { fg = colors.lightYellow },
    OilGitUntracked = { fg = colors.mutedText },
    OilGitIgnored = { link = "OilDirHidden" },
}

vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax on") then
    vim.api.nvim_command("syntax reset")
end

vim.g.colors_name = "zerolimits"

for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
end
