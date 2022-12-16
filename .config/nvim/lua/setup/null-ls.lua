local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local DIAGNOSTICS_ON_SAVE = methods.internal.DIAGNOSTICS_ON_SAVE

local terraform_validate_handler = function(params)
  -- Early exit if results are vim.NIL
  if params.output.diagnostics == vim.NIL then
    return {}
  end

  local parser = h.diagnostics.from_json({})
  local offenses = {}

  for _, offense in ipairs(params.output.diagnostics) do
    table.insert(offenses, {
      message = offense.summary,
      line = offense.range.start.line,
      -- lua has a very complicated relationship to the word end it seems
      end_line = offense.range["end"].line,
      level = offense.severity,
    })
  end
  return parser({ output = offenses })
end

require('null-ls').register({
    name = "terraform_validate",
    method = DIAGNOSTICS_ON_SAVE,
    filetypes = { "terraform" },
    generator = h.generator_factory({
        command = "terraform",
        args = { "validate", "-json" },
        format = "json_raw",
        check_exit_code = function(code)
            return code <= 1
        end,
        ignore_stderr = true,
        on_output = terraform_validate_handler,
    }),
})


require("null-ls").setup({
  -- If I get my hack on I change debug to true and tail -f ~/.cache/nvim/null-ls.log like a boss
  debug = false,
  sources = {
    require("null-ls").builtins.formatting.jq,
    require("null-ls").builtins.formatting.terraform_fmt
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

