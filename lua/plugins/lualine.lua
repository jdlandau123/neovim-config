function lsp_diagnostic_message()
  local bufnr = vim.api.nvim_get_current_buf()
  local line = vim.api.nvim_win_get_cursor(0)[1] - 1
  local diags = vim.diagnostic.get(bufnr, { lnum = line })
  if #diags > 0 then
    return diags[1].message
  end
end

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      sections = {
        lualine_c = {
          "filename",
          { lsp_diagnostic_message }
        }
      }
    })
  end
}
