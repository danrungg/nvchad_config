-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local servers = { "rust_analyzer" }
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- lspconfig.rust_analyzer.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
--   filetype = { "rust" },
--   root_dir = util.root_pattern "Cargo.toml",
--   settings = {
--     ["rust-analyzer"] = {
--       cargo = {
--         allFeatures = true,
--       },
--       diagnostics = {
--         enable = false,
--       },
--     },
--   },
-- }
