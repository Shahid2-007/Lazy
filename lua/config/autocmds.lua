-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Create an auto-command group
vim.api.nvim_create_augroup("FileTypeKeymaps", { clear = true })

-- Set up keymaps for .c and .cpp files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "nix" }, -- Trigger for both .c and .cpp files
  group = "FileTypeKeymaps",
  callback = function()
    local filetype = vim.bo.filetype -- Get the current file type

    -- Define the command based on the file type
    local command
    if filetype == "c" then
      command = ':w<cr>:!kitty zsh -c "gcc "%:p" -g -o ~/bin/%:t:r && ~/bin/%:t:r ; sleep infinity"<cr>'
    elseif filetype == "cpp" then
      command = ':w<cr>:!kitty zsh -c "g++ "%:p" -g -o ~/bin/%:t:r && ~/bin/%:t:r ; sleep infinity"<cr>'
    elseif filetype == "nix" then
      command = ':w<cr>:!kitty zsh -c "nix eval -f "%:p"; sleep infinity"<cr>'
    end

    -- Set the keymap for <leader>r
    vim.api.nvim_set_keymap("n", "<leader>r", command, { noremap = true, silent = true })
  end,
})
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.nix",
  callback = function()
    vim.cmd("silent! execute \"!zsh -c 'nixfmt %'\"")
  end,
})
