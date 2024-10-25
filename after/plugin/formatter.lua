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
    python = {
      function()
        return {
          exe = "black",
          args = {
            "--quiet",
            "-"
          },
          stdin = true,
        }
      end
    },
    sh = {
      function()
        return {
          exe = "shfmt",
          args = {
            "-i",
            "4",
            "-bn",
            "-ci",
            "-sr"
          },
          stdin = true,
        }
      end
    },
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
    cpp = {
      function()
        return {
          exe = "clang-format",
          args = {
            "--assume-filename",
            vim.api.nvim_buf_get_name(0)
          },
          stdin = true,
          cwd = vim.fn.expand "%:p:h"
        }
      end
    },
  }
}
