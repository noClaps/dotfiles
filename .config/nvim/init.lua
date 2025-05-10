local rocks_config = {
    rocks_path = vim.env.HOME .. "/.local/share/nvim/rocks",
}

vim.g.rocks_nvim = rocks_config

local luarocks_path = {
    vim.fs.joinpath(rocks_config.rocks_path, "share", "lua", "5.1", "?.lua"),
    vim.fs.joinpath(rocks_config.rocks_path, "share", "lua", "5.1", "?", "init.lua"),
}
package.path = package.path .. ";" .. table.concat(luarocks_path, ";")

local luarocks_cpath = {
    vim.fs.joinpath(rocks_config.rocks_path, "lib", "lua", "5.1", "?.so"),
    vim.fs.joinpath(rocks_config.rocks_path, "lib", "lua", "5.1", "?.so"),
    vim.fs.joinpath(rocks_config.rocks_path, "lib64", "lua", "5.1", "?.dylib"),
    vim.fs.joinpath(rocks_config.rocks_path, "lib64", "lua", "5.1", "?.dylib"),
}
package.cpath = package.cpath .. ";" .. table.concat(luarocks_cpath, ";")

vim.opt.runtimepath:append(vim.fs.joinpath(rocks_config.rocks_path, "lib", "luarocks", "rocks-5.1", "*", "*"))

vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<esc>", ":noh<CR><esc>")
vim.diagnostic.config({ virtual_lines = { current_line = true } })

require("config.ayu")
require("config.mason")
require("config.telescope")
