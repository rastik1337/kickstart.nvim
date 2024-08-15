local filetypes = {
  'javascript',
  'typescript',
  'python',
  'php',
  'vue',
  'json',
  'css',
  'lua'
}

local function format()
  if vim.tbl_contains(filetypes, vim.bo.filetype) then
    vim.cmd 'Neoformat'
    return
  end

  vim.lsp.buf.format()
end

return {
  'sbdchd/neoformat',
  config = function()
    vim.g.neoformat_try_node_exe = 1

    vim.keymap.set('n', '<leader>f', format, { desc = '[F]ormat document' })
  end,
}
