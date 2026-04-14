-- npm install -g @vue/language-server

local f = io.popen('npm -g ls @vue/language-server -g', 'r')
local raw_output = f:read('*a')
f:close()
local package_location = string.match(raw_output, '([^\n]*)') .. '/node_modules/@vue/language-server'

local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = package_location,
  languages = { 'vue' },
  configNamespace = 'typescript',
}

-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config.vue_ls = {
    capabilities = capabilities,
}

vim.lsp.enable({'vue_ls'})

return {
    vue_plugin = vue_plugin
}
