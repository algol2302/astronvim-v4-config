-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      -- change colorscheme
      -- colorscheme = "astrodark",
      -- colorscheme = "vscode",
      -- colorscheme = "sonokai",
      colorscheme = "onenord",
      -- colorscheme = "tokyonight-day",

      -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
      highlights = {
        init = { -- this table overrides highlights in all themes
          -- Normal = { bg = "#000000" },
        },
        astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
          -- Normal = { bg = "#000000" },
        },
      },
      -- Icons can be configured throughout the interface
      icons = {
        -- configure the loading of the lsp in the status line
        LSPLoading1 = "⠋",
        LSPLoading2 = "⠙",
        LSPLoading3 = "⠹",
        LSPLoading4 = "⠸",
        LSPLoading5 = "⠼",
        LSPLoading6 = "⠴",
        LSPLoading7 = "⠦",
        LSPLoading8 = "⠧",
        LSPLoading9 = "⠇",
        LSPLoading10 = "⠏",
        LSPLoaded = "",
        ActiveLSP = "",
        ActiveTS = " ",
        BufferClose = "",
        DapBreakpoint = "",
        DapBreakpointCondition = "",
        DapBreakpointRejected = "",
        DapLogPoint = "",
        DapStopped = "",
        DefaultFile = "",
        Diagnostic = "",
        DiagnosticError = "",
        DiagnosticHint = "",
        DiagnosticInfo = "",
        DiagnosticWarn = "",
        Ellipsis = "",
        FileModified = "",
        FileReadOnly = "",
        FoldClosed = "",
        FoldOpened = "",
        FolderClosed = "",
        FolderEmpty = "",
        FolderOpen = "",
        Git = "",
        GitAdd = "",
        GitBranch = "",
        GitChange = "",
        GitConflict = "",
        GitDelete = "",
        GitIgnored = "",
        GitRenamed = "",
        GitStaged = "",
        GitUnstaged = "",
        GitUntracked = "",
        MacroRecording = "",
        Paste = "",
        Search = "",
        Selected = "",
        TabClose = "",
        VimIcon = "",
        ScrollText = "",
      },
    },
  },
  {
    "sainnhe/sonokai",
    init = function() -- init function runs before the plugin is loaded
      vim.g.sonokai_style = "atlantis" -- andromeda | atlantis | espresso | maia | shusia
      -- vim.g.sonokai_better_performance = 1
      vim.g.sonokai_enable_italic = 1
      --  vim.g.sonokai_diagnostic_text_highlight = 1
    end,
  },

  -- https://github.com/AstroNvim/astrocommunity/blob/main/lua/astrocommunity/recipes/vscode-icons/init.lua
  {
    "onsails/lspkind.nvim",
    opts = function(_, opts)
      -- use codicons preset
      opts.preset = "codicons"
      -- set some missing symbol types
      opts.symbol_map = {
        Array = "",
        Boolean = "",
        Key = "",
        Namespace = "",
        Null = "",
        Number = "",
        Object = "",
        Package = "",
        String = "",
        -- default:
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰜢",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
      }
    end,
  },
}
