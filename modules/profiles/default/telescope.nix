{
  imports = [ ../../../keybinds/explorer.nix ];
  
  config = {
    plugins = {
      telescope = {
        enable = true;
        settings = {
          defaults = {
            layout_strategy = "horizontal";
            layout_config = {
              preview_width = 0.6;
            };
            file_ignore_patterns = [
              "node_modules"
              ".git/"
              "target/"
              "result"
            ];
          };
        };
      };
    };
  };
}