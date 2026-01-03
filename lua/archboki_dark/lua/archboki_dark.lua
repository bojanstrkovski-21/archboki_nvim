local M = {}

local colors = {
  background = "#1d283a",
  foreground = "#c9e79a",
  red = "#FF5370",
  green = "#09b2ad",
  yellow = "#ff8800",
  blue = "#32446a", -- darker blue for buffer tabs
  darkblue = "#141c2a",
  magenta = "#cc9fe9",
  cyan = "#98f6e3",
  gray = "#94a3b8",
  orange = "#F78C6C",
  hint = "#f8fafc",
  cursorline_clr = "#28334a", -- slightly lighter than background for subtle highlight
}

function M.colorscheme()
  vim.cmd 'highlight clear'
  vim.cmd 'syntax reset'

  vim.o.background = 'dark'
  vim.g.colors_name = 'archboki_dark'

  local set = vim.api.nvim_set_hl

  -- Basic UI & Syntax
  set(0, 'Normal', { fg = colors.foreground, bg = colors.background })
  set(0, 'NormalFloat', { fg = colors.foreground, bg = colors.background })
  set(0, 'FloatBorder', { fg = colors.foreground, bg = colors.background })
  set(0, 'Comment', { fg = colors.gray, italic = true })
  set(0, 'Search', { fg = colors.background, bg = colors.cyan })
  set(0, 'IncSearch', { fg = colors.background, bg = colors.cyan })
  set(0, 'StatusLine', { fg = colors.background, bg = colors.darkblue })
  set(0, 'StatusLineNC', { fg = colors.background, bg = colors.darkblue })
  set(0, 'Constant', { fg = colors.magenta })
  set(0, 'LineNr', { fg = colors.blue, bg = colors.background })
  set(0, 'SignColumn', { bg = colors.background })
  set(0, 'CursorLineNr', { fg = colors.yellow, bg = colors.background, bold = true })
  set(0, 'FoldColumn', { bg = colors.background })
  set(0, 'EndOfBuffer', { bg = colors.background })
  set(0, 'VertSplit', { bg = colors.background })
  set(0, 'String', { fg = colors.green })
  set(0, 'Identifier', { fg = colors.blue })
  set(0, 'Keyword', { fg = colors.cyan })
  set(0, 'Function', { fg = colors.yellow })
  set(0, 'Statement', { fg = colors.red })
  set(0, 'Type', { fg = colors.cyan })
  set(0, 'Special', { fg = colors.magenta })
  set(0, 'Visual', { bg = colors.blue })
  set(0, 'CursorLine', { bg = colors.cursorline_clr })
  set(0, 'CursorLineNr', { fg = colors.yellow, bg = colors.cursorline_clr, bold = true })
  set(0, 'Error', { fg = colors.red, bold = true })
  set(0, 'TSKeyword', { fg = colors.red })
  set(0, 'TSFunction', { fg = colors.yellow })
  set(0, 'TSVariable', { fg = colors.foreground })
  set(0, 'TSType', { fg = colors.cyan })

  -- Diagnostics
  set(0, 'DiagnosticError', { fg = colors.red })
  set(0, 'DiagnosticWarn', { fg = colors.orange })
  set(0, 'DiagnosticInfo', { fg = colors.green })
  set(0, 'DiagnosticHint', { fg = colors.hint })
  set(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.red })
  set(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.orange })
  set(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.green })
  set(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.hint })
end

return M
