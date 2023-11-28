-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    htmldjango = {
      function()
        return {
          exe = "djlint",
          args = {
            "--reformat",
            "-"
          },
          stdin = true,
        }
      end
    },
  }
}
