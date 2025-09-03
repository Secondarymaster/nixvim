{
  imports = [
    ./default.nix
    ../languages/nix.nix
  ];
  
  # Override plugin list to add nix-specific features
  config.plugins = {
    # Inherit all default plugins
    treesitter.settings.ensure_installed = ["vim" "vimdoc" "lua" "nix"];
    
    # Add nix LSP
    lsp.servers.nil_ls.enable = true;
  };
}
