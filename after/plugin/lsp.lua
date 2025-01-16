require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "csharp_ls" }
})

require("lspconfig").lua_ls.setup {}

require("lspconfig").csharp_ls.setup {
  settings = {
    -- Additional settings for the C# language server
    csharp = {
      -- Specify paths to MSBuild for .NET framework projects
      msbuild = {
        enabled = true,
        path = "/usr/bin/msbuild", -- Adjust if necessary
      },
      -- Enable OmniSharp for specific C# features like code completion and IntelliSense
      omnisharp = {
        enableRoslynAnalyzers = true,  -- Enable Roslyn Analyzers for linting
        organizeImportsOnFormat = true, -- Auto-organize imports during formatting
        enableEditorConfigSupport = true, -- Support .editorconfig settings
        disableFormatting = false,  -- Enable or disable formatting features
        enableMsBuildLoadProjectsOnDemand = true, -- Load MSBuild projects on demand
      },
    },
  },
}

vim.api.nvim_set_keymap("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
