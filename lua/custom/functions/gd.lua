-- Source: https://github.com/PatrikHajek/kickstart.nvim/blob/ad98f47e267699dc6dbc69d3a3d56d40431ca669/lua/custom/config.lua#L216
local function go_to_definition()
  vim.lsp.buf.definition {
    on_list = function(opts)
      ---@alias item {filename: string, text: string}[]

      ---@type item
      local items = opts.items

      ---@type item
      local filtered = {}
      for k in pairs(items) do
        local item = items[k]
        if item.filename:find '%.nuxt/components%.d%.ts' or not item.filename:find '%.nuxt' then
          filtered[#filtered + 1] = items[k]
        end
      end

      if #filtered == 0 then
        vim.fn.setloclist(0, items)
        if #items == 1 then
          vim.api.nvim_command ':lfirst'
        elseif #items > 1 then
          require('telescope.builtin').loclist()
        else
          vim.notify 'No definitions found'
        end
        return
      end

      vim.fn.setloclist(0, filtered)
      if #filtered > 1 then
        require('telescope.builtin').loclist()
        return
      end

      local item = filtered[1]
      if item.filename:find '%.nuxt/components%.d%.ts' then
        local filename = item.filename:match '(.+)components%.d%.ts'
        local path = item.text:match 'import%("(.+)"%)'

        if not path or not filename then
          vim.notify "File path couldn't be extracted"
        else
          vim.api.nvim_command(':e ' .. filename .. path)
        end
      else
        vim.api.nvim_command ':lfirst'
      end
    end,
  }
end

return {
  go_to_definition = go_to_definition,
}
