local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local dmcGroup = augroup('dmc', {})

-- [[ Strip spaces on save ]]
autocmd({"BufWritePre"}, {
  group = dmcGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
