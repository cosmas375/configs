-- npm install -g @vue/language-server

local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = '/usr//lib/node_modules/@vue/language-server',
  languages = { 'vue' },
  configNamespace = 'typescript',
}

require('lspconfig').vue_ls.setup {}

return {
    vue_plugin = vue_plugin
}
