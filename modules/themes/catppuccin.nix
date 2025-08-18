{
  config = {
    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "mocha"; # mocha, macchiato, frappe, latte
        background = {
          light = "latte";
          dark = "mocha";
        };
        transparent_background = false;
        show_end_of_buffer = false;
        term_colors = true;
        dim_inactive = {
          enabled = false;
          shade = "dark";
          percentage = 0.15;
        };
        no_italic = false;
        no_bold = false;
        no_underline = false;
        styles = {
          comments = ["italic"];
          conditionals = ["italic"];
          loops = [];
          functions = [];
          keywords = [];
          strings = [];
          variables = [];
          numbers = [];
          booleans = [];
          properties = [];
          types = [];
          operators = [];
        };
        color_overrides = {};
        custom_highlights = {};
        integrations = {
          cmp = true;
          gitsigns = true;
          nvimtree = true;
          treesitter = true;
          notify = false;
          mini = {
            enabled = true;
            indentscope_color = "";
          };
          telescope = {
            enabled = true;
          };
          which_key = true;
        };
      };
    };
    
    # Set the colorscheme
    extraConfigLua = ''
      vim.cmd.colorscheme "catppuccin"
    '';
  };
}