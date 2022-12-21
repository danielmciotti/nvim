require("danielciotti.remap")
require("danielciotti.set")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local dmcGroup = augroup('dmc', {})

autocmd({"BufWritePre"}, {
	group = dmcGroup,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

