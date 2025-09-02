{
  imports = [
    ./keybinds/core.nix
  ];
  
  config = {
    globals.mapleader = " ";
    
    opts = {
      number = true;
      relativenumber = false;
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      smartindent = true;
      ignorecase = true;
      smartcase = true;
      cursorline = true;
      termguicolors = true;
      signcolumn = "yes";
      splitbelow = true;
      splitright = true;
      clipboard = "unnamedplus";
      mouse = "a";
      undofile = true;
      updatetime = 250;
    };
    
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
      lualine = {
        enable = true;
        settings.options.theme = "auto";
      };

      web-devicons.enable = true;
    };
  };
}
