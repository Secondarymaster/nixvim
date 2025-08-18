{
  config = {
    keymaps = [
      # Basic operations
      { mode = "n"; key = "<Esc>"; action = "<cmd>noh<CR>"; options.desc = "Clear highlights"; }
      { mode = "n"; key = "<C-s>"; action = "<cmd>w<CR>"; options.desc = "Save file"; }
      
      # Un-map Arrow keys in normal mode
      { mode = "n"; key = "<Up>"; action = "<nop>"; }
      { mode = "n"; key = "<Left>"; action = "<nop>"; }
      { mode = "n"; key = "<Down>"; action = "<nop>"; }
      { mode = "n"; key = "<Right>"; action = "<nop>"; }
      
      # Window navigation
      { mode = "n"; key = "<C-h>"; action = "<C-w>h"; options.desc = "Window left"; }
      { mode = "n"; key = "<C-l>"; action = "<C-w>l"; options.desc = "Window right"; }
      { mode = "n"; key = "<C-j>"; action = "<C-w>j"; options.desc = "Window down"; }
      { mode = "n"; key = "<C-k>"; action = "<C-w>k"; options.desc = "Window up"; }
      
      # Better line movement
      { mode = "n"; key = "j"; action = "v:count == 0 ? 'gj' : 'j'"; options = { expr = true; desc = "Move down"; }; }
      { mode = "n"; key = "k"; action = "v:count == 0 ? 'gk' : 'k'"; options = { expr = true; desc = "Move up"; }; }
    ];
  };
}
