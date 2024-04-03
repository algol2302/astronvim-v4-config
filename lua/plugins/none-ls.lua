if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.formatting.black,
      -- null_ls.builtins.formatting.prettier,
      null_ls.builtins.diagnostics.sqlfluff.with {
        extra_args = { "--dialect", "postgres" }, -- change to your dialect
      },
      null_ls.builtins.formatting.sqlfluff.with {
        extra_args = { "--dialect", "postgres" }, -- change to your dialect
      },
      -- null_ls.builtins.completion.spell,
      null_ls.builtins.diagnostics.codespell,
      -- null_ls.builtins.diagnostics.cspell.with {
      --   config = shared_config,
      -- },
      -- null_ls.builtins.code_actions.cspell.with {
      --   config = shared_config,
      -- },
      null_ls.builtins.diagnostics.protolint,
      null_ls.builtins.formatting.protolint,
      null_ls.builtins.diagnostics.protoc_gen_lint,

      -- Check supported formatters and linters
      -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
      -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    }
    return config -- return final config table
  end,
}
