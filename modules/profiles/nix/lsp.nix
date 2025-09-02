{
  config = {
    plugins = {
      lsp.servers.nil_ls = {
        enable = true;
        settings.nil = {
          formatting.command = ["nixfmt"];
          nix.flake.autoArchive = true;
        };
      };
      treesitter.settings.ensure_installed = ["nix"];
    };
    
    autoCmd = [
      {
        event = ["BufRead" "BufNewFile"];
        pattern = ["*.nix"];
        callback.__raw = ''
          function()
            vim.opt_local.tabstop = 2
            vim.opt_local.shiftwidth = 2
            vim.opt_local.expandtab = true
            vim.opt_local.commentstring = "# %s"
          end
        '';
      }
    ];
  };
}
