{
  imports = [
    ../core.nix
    ../keybinds.nix
    ../themes/catppuccin.nix
    ../plugins/essential.nix
    ../plugins/lsp.nix
    ../plugins/explorer.nix
  ];
  
  # Plugin master list for default profile
  config.plugins = {
    # Essential plugins (always enabled in default)
    treesitter.enable = true;
    nvim-autopairs.enable = true;
    comment.enable = true;
    which-key.enable = true;
    web-devicons.enable = true;
    lualine.enable = true;
    
    # LSP stack
    lsp.enable = true;
    cmp.enable = true;
    luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    
    # File exploration
    nvim-tree.enable = true;
    telescope.enable = true;
  };
}
