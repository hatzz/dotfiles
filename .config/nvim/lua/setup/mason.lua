require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "eslint",
    "html",
    "sumneko_lua",
    "pyright",
    "rust_analyzer",
    "svelte",
    "tailwindcss",
    "terraformls",
    "tflint",
    "tsserver",
    "yamlls",
    "bashls"
  }
})
