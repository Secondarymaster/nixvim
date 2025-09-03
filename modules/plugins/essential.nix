{
  config = {
    plugins = {
      treesitter = {
        enable = true;
        settings = {
          highlight.enable = true;
          indent.enable = true;
          ensure_installed = ["vim" "vimdoc" "lua"];
        };
      };
      nvim-autopairs.enable = true;
      comment.enable = true;
      which-key.enable = true;
      web-devicons.enable = true;
      lualine = {
        enable = true;
        settings.options.theme = "auto";
      };
    };
  };
}
