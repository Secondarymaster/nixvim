{
  config = {
    # Disable other colorschemes when using pywal
    colorschemes = {
      catppuccin.enable = false;
    };
    
    # Use pywal colors
    extraConfigLua = ''
      -- Load pywal colors
      local function load_pywal_colors()
        local colors_file = os.getenv("HOME") .. "/.cache/wal/colors-wal.vim"
        local file = io.open(colors_file, "r")
        
        if file then
          file:close()
          vim.cmd("source " .. colors_file)
          return true
        else
          -- Fallback if pywal hasn't generated colors yet
          vim.notify("Pywal colors not found, using fallback", vim.log.levels.WARN)
          vim.cmd.colorscheme("default")
          return false
        end
      end
      
      -- Try to load pywal colors
      if not load_pywal_colors() then
        -- Create basic dark theme as fallback
        vim.o.background = "dark"
      end
      
      -- Auto-reload when pywal colors change
      vim.api.nvim_create_autocmd("Signal", {
        pattern = "SIGUSR1",
        callback = function()
          load_pywal_colors()
          vim.notify("Pywal colors reloaded!", vim.log.levels.INFO)
        end,
      })
    '';
    
    # Optional: Set up pywal integration for lualine
    plugins.lualine = {
      enable = true;
      settings = {
        options = {
          theme = "auto"; # Will pick up pywal colors
          component_separators = "|";
          section_separators = "";
        };
      };
    };
  };
}