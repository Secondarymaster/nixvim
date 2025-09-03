{
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

