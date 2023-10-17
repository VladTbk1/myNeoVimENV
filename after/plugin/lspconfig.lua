local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    --if client.name == "tsserver" then
    --client.resolved_capabilities.document_formating = false
    --end
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})
require("mason-lspconfig").setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = { "tsserver", "pyright", "rust_analyzer", "lua_ls", "sqlls", "clangd" },
    handlers = {
        lsp_zero.default_setup,
    },
})
require 'lspconfig'.pyright.setup { on_attach = on_attach, settings = {
    pyright = { autoImportCompletion = true, },
    python = {
        analysis = {
            autoSearchPaths = true,
            diagnosticMode = 'openFilesOnly',
            useLibraryCodeForTypes = true,
            typeCheckingMode = 'off'
        }
    }
} }
