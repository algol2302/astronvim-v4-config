-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },

  vim.api.nvim_create_autocmd({ "UIEnter" }, {
    desc = "Show file explorer on startup",
    callback = function()
      vim.cmd [[Neotree]]
      vim.cmd [[setlocal nospell]]
    end,
  }),

  vim.api.nvim_create_user_command("ToggleBlame", function(args) require("blame").toggle(args) end, { nargs = "*" }),

  vim.api.nvim_set_hl(0, "@lsp.type.variable", {}),
  vim.cmd [[hi @boolean guifg='#BA9CF3' cterm=italic gui=italic]],
  -- vim.cmd [[hi @lsp.typemod.variable.defaultLibrary guifg='#BA9CF3' cterm=italic gui=italic]]
  -- vim.cmd [[hi @lsp.typemod.variable.readonly guifg='#BA9CF3' cterm=italic gui=italic]]
}
