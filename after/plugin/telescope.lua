-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?',       require('telescope.builtin').oldfiles,                  { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers,                   { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/',       require('telescope.builtin').current_buffer_fuzzy_find, { desc = '[/] Find inside currently open buffer' })
vim.keymap.set('n', '<leader>ff',      require('telescope.builtin').find_files,                { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fh',      require('telescope.builtin').git_files,                 { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fw',      require('telescope.builtin').grep_string,               { desc = '[F]ind current [W]ord' })
vim.keymap.set('n', '<leader>fg',      require('telescope.builtin').live_grep,                 { desc = '[F]ind by [G]rep' })
