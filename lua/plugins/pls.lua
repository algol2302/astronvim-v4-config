return {
  "AstroNvim/astrolsp",
  -- https://github.com/lasorda/protobuf-language-server
  -- ---@type AstroLSPOpts
  -- opts = function(plugin, opts)
  --   --   -- insert "prolog_lsp" into our list of servers
  --   opts.servers = opts.servers or {}
  --   table.insert(opts.servers, "pls")
  --
  --   opts.config = require("astrocore").extend_tbl(opts.config or {}, {
  --     --   -- this must be a function to get access to the `lspconfig` module
  --     pls = {
  --       --     -- the command for starting the server
  --       cmd = { "pls" },
  --       filetypes = "proto",
  --       -- root_dir = require("lspconfig.util").root_pattern ".git",
  --       single_file_support = true,
  --       root_dir = function() end,
  --     },
  --   })
  -- end,
}
