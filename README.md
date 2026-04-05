# Neovim Plugin for Polarity
A simple [Neovim](https://github.com/neovim/neovim) plugin for the [Polarity](https://github.com/polarity-lang/polarity) language.

This plugin provides basic editor configuration (syntax highlighting, LSP server) and default settings for Polarity source files.

For the LSP configuration Neovim v0.11+ is needed.

## Installation
You need to have the `pol` binary available (or set a custom path in the plugin configuration).

Use your preferred plugin manager to install `"polarity-lang/neovim"`.
Remember to enable the LSP server if you want it to automatically startup.

Here's an example with Neovim's builtin plugin manager (v0.12+), but any other package manager works exactly the same.
```lua
vim.pack.add({
    {
        src = "https://github.com/polarity-lang/neovim",
        name = "polarity-neovim",
    },
})

vim.lsp.enable("polarity")
```
