{
  imports = [ ../../../keybinds/explorer.nix ];
  
  config = {
    plugins = {
      nvim-tree = {
        enable = true;
        settings = {
          view = {
            width = 30;
            side = "left";
          };
          renderer.group_empty = true;
          filters.dotfiles = false;
        };
      };
    };
  };
}