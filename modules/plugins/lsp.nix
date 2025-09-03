{
  config = {
    plugins = {
      lsp = {
        enable = true;
        servers = {
          lua_ls = {
            enable = true;
            settings.Lua = {
              diagnostics.globals = ["vim"];
              workspace.library = [
                "\${3rd}/luv/library"
                "\${3rd}/busted/library"
              ];
            };
          };
        };
      };
      cmp = {
        enable = true;
        settings = {
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
          sources = [
            { name = "nvim_lsp"; }
            { name = "luasnip"; }
            { name = "buffer"; }
            { name = "path"; }
          ];
          mapping = {
            "<C-n>" = "cmp.mapping.select_next_item()";
            "<C-p>" = "cmp.mapping.select_prev_item()";
            "<C-y>" = "cmp.mapping.confirm({ select = true })";
            "<C-Space>" = "cmp.mapping.complete()";
          };
        };
      };
      luasnip.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp-buffer.enable = true;
      cmp-path.enable = true;
      cmp_luasnip.enable = true;
    };
  };
}
