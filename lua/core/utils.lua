local M = {}
local fn = vim.fn
local config_path = vim.call("stdpath", "config")

function _G.join_paths(...)
	local result = table.concat({ ... }, "/")
	return result
end

M.join_paths = _G.join_paths

local compile_path = M.join_paths(config_path, "plugin", "packer_compiled.lua")
local snapshot_path = M.join_paths(config_path, "plugin", "cache", "snapshots")

-- Automatically install packer
local install_path = join_paths(vim.fn.stdpath("data"), "site", "pack", "packer", "start", "packer.nvim")

if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	package_root = M.join_paths(vim.fn.stdpath("data"), "site", "pack"),
	compile_path = compile_path,
	snapshot_path = snapshot_path,
	auto_clean = true,
	compile_on_sync = true,
	max_jobs = 100,
	git = {
		clone_timeout = 300,
	},
	display = {
		working_sym = "ﲊ",
		error_sym = "✗ ",
		done_sym = " ",
		removed_sym = " ",
		moved_sym = "",
		open_fn = function()
			return require("packer.util").float({
				border = "rounded",
			})
		end,
	},
})
M.packer = packer

return M
