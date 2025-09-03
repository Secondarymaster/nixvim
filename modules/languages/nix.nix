{
  config = {
    plugins = {
      # Extend existing LSP servers, don't replace them
      lsp.servers.nil_ls = {
        enable = true;
        settings.nil = {
          formatting.command = ["nixfmt"];
          nix.flake.autoArchive = true;
        };
      };
      # Add nix to existing treesitter languages
      treesitter.settings.ensure_installed = ["vim" "vimdoc" "lua" "nix"];
    };
    
    autoCmd = [
      {
        event = ["BufRead" "BufNewFile"];
        pattern = ["*.nix"];
        callback = {
          __raw = ''
            function()
              vim.opt_local.tabstop = 2
              vim.opt_local.shiftwidth = 2
              vim.opt_local.expandtab = true
              vim.opt_local.commentstring = "# %s"
            end
          '';
        };
      }
    ];
  };
}

