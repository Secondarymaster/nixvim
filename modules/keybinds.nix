{
  config = {
    keymaps = [
      # Core operations
      { mode = "n"; key = "<Esc>"; action = "<cmd>noh<CR>"; options.desc = "Clear highlights"; }
      
      # Disable arrow keys
      { mode = "n"; key = "<Up>"; action = "<nop>"; }
      { mode = "n"; key = "<Left>"; action = "<nop>"; }
      { mode = "n"; key = "<Down>"; action = "<nop>"; }
      { mode = "n"; key = "<Right>"; action = "<nop>"; }
      
      # Better line movement
      { mode = "n"; key = "j"; action = "v:count == 0 ? 'gj' : 'j'"; options = { expr = true; desc = "Move down"; }; }
      { mode = "n"; key = "k"; action = "v:count == 0 ? 'gk' : 'k'"; options = { expr = true; desc = "Move up"; }; }
      
      # ===== SPACEMACS/EVIL STYLE KEYBINDS =====
      
      # SPC f - Files
      { mode = "n"; key = "<leader>fs"; action = "<cmd>w<CR>"; options.desc = "Save file"; }
      { mode = "n"; key = "<leader>fS"; action = "<cmd>wa<CR>"; options.desc = "Save all files"; }
      { mode = "n"; key = "<leader>ff"; action = "<cmd>Telescope find_files<CR>"; options.desc = "Find files"; }
      { mode = "n"; key = "<leader>fr"; action = "<cmd>Telescope oldfiles<CR>"; options.desc = "Recent files"; }
      { mode = "n"; key = "<leader>fR"; action = "<cmd>e!<CR>"; options.desc = "Reload file"; }
      { mode = "n"; key = "<leader>ft"; action = "<cmd>NvimTreeToggle<CR>"; options.desc = "Toggle file tree"; }
      { mode = "n"; key = "<leader>fT"; action = "<cmd>NvimTreeFindFile<CR>"; options.desc = "Find in file tree"; }
      
      # SPC b - Buffers
      { mode = "n"; key = "<leader>bb"; action = "<cmd>Telescope buffers<CR>"; options.desc = "List buffers"; }
      { mode = "n"; key = "<leader>bd"; action = "<cmd>bdelete<CR>"; options.desc = "Delete buffer"; }
      { mode = "n"; key = "<leader>bD"; action = "<cmd>bdelete!<CR>"; options.desc = "Force delete buffer"; }
      { mode = "n"; key = "<leader>bn"; action = "<cmd>bnext<CR>"; options.desc = "Next buffer"; }
      { mode = "n"; key = "<leader>bp"; action = "<cmd>bprevious<CR>"; options.desc = "Previous buffer"; }
      { mode = "n"; key = "<leader>br"; action = "<cmd>e!<CR>"; options.desc = "Reload buffer"; }
      { mode = "n"; key = "<leader>bs"; action = "<cmd>w<CR>"; options.desc = "Save buffer"; }
      
      # SPC w - Windows
      { mode = "n"; key = "<leader>wh"; action = "<C-w>h"; options.desc = "Window left"; }
      { mode = "n"; key = "<leader>wj"; action = "<C-w>j"; options.desc = "Window down"; }
      { mode = "n"; key = "<leader>wk"; action = "<C-w>k"; options.desc = "Window up"; }
      { mode = "n"; key = "<leader>wl"; action = "<C-w>l"; options.desc = "Window right"; }
      { mode = "n"; key = "<leader>ws"; action = "<cmd>split<CR>"; options.desc = "Split horizontal"; }
      { mode = "n"; key = "<leader>wv"; action = "<cmd>vsplit<CR>"; options.desc = "Split vertical"; }
      { mode = "n"; key = "<leader>wd"; action = "<C-w>q"; options.desc = "Delete window"; }
      { mode = "n"; key = "<leader>wo"; action = "<C-w>o"; options.desc = "Delete other windows"; }
      { mode = "n"; key = "<leader>w="; action = "<C-w>="; options.desc = "Balance windows"; }
      { mode = "n"; key = "<leader>wm"; action = "<C-w>_<C-w>|"; options.desc = "Maximize window"; }
      
      # SPC s - Search
      { mode = "n"; key = "<leader>ss"; action = "<cmd>Telescope current_buffer_fuzzy_find<CR>"; options.desc = "Search in buffer"; }
      { mode = "n"; key = "<leader>sp"; action = "<cmd>Telescope live_grep<CR>"; options.desc = "Search in project"; }
      { mode = "n"; key = "<leader>sf"; action = "<cmd>Telescope find_files<CR>"; options.desc = "Search files"; }
      { mode = "n"; key = "<leader>sb"; action = "<cmd>Telescope buffers<CR>"; options.desc = "Search buffers"; }
      { mode = "n"; key = "<leader>sh"; action = "<cmd>Telescope help_tags<CR>"; options.desc = "Search help"; }
      { mode = "n"; key = "<leader>sk"; action = "<cmd>Telescope keymaps<CR>"; options.desc = "Search keymaps"; }
      { mode = "n"; key = "<leader>sc"; action = "<cmd>Telescope commands<CR>"; options.desc = "Search commands"; }
      
      # SPC p - Project
      { mode = "n"; key = "<leader>pf"; action = "<cmd>Telescope find_files<CR>"; options.desc = "Find files in project"; }
      { mode = "n"; key = "<leader>pg"; action = "<cmd>Telescope live_grep<CR>"; options.desc = "Grep in project"; }
      { mode = "n"; key = "<leader>pr"; action = "<cmd>Telescope oldfiles<CR>"; options.desc = "Recent files in project"; }
      { mode = "n"; key = "<leader>pt"; action = "<cmd>NvimTreeToggle<CR>"; options.desc = "Project tree"; }
      
      # SPC g - Git
      { mode = "n"; key = "<leader>gs"; action = "<cmd>Telescope git_status<CR>"; options.desc = "Git status"; }
      { mode = "n"; key = "<leader>gc"; action = "<cmd>Telescope git_commits<CR>"; options.desc = "Git commits"; }
      { mode = "n"; key = "<leader>gb"; action = "<cmd>Telescope git_branches<CR>"; options.desc = "Git branches"; }
      { mode = "n"; key = "<leader>gf"; action = "<cmd>Telescope git_files<CR>"; options.desc = "Git files"; }
      
      # SPC m - Major mode (LSP)
      { mode = "n"; key = "<leader>mf"; action = "<cmd>lua vim.lsp.buf.format({ async = true })<CR>"; options.desc = "Format buffer"; }
      { mode = "n"; key = "<leader>mr"; action = "<cmd>lua vim.lsp.buf.rename()<CR>"; options.desc = "Rename symbol"; }
      { mode = "n"; key = "<leader>ma"; action = "<cmd>lua vim.lsp.buf.code_action()<CR>"; options.desc = "Code action"; }
      { mode = "n"; key = "<leader>md"; action = "<cmd>lua vim.diagnostic.open_float()<CR>"; options.desc = "Show diagnostic"; }
      { mode = "n"; key = "<leader>ml"; action = "<cmd>Telescope diagnostics<CR>"; options.desc = "List diagnostics"; }
      
      # SPC h - Help
      { mode = "n"; key = "<leader>hh"; action = "<cmd>Telescope help_tags<CR>"; options.desc = "Help tags"; }
      { mode = "n"; key = "<leader>hk"; action = "<cmd>Telescope keymaps<CR>"; options.desc = "Keymaps"; }
      { mode = "n"; key = "<leader>hc"; action = "<cmd>Telescope commands<CR>"; options.desc = "Commands"; }
      { mode = "n"; key = "<leader>hm"; action = "<cmd>Telescope man_pages<CR>"; options.desc = "Man pages"; }
      
      # SPC t - Toggle
      { mode = "n"; key = "<leader>tn"; action = "<cmd>set number!<CR>"; options.desc = "Toggle line numbers"; }
      { mode = "n"; key = "<leader>tr"; action = "<cmd>set relativenumber!<CR>"; options.desc = "Toggle relative numbers"; }
      { mode = "n"; key = "<leader>tw"; action = "<cmd>set wrap!<CR>"; options.desc = "Toggle word wrap"; }
      { mode = "n"; key = "<leader>ts"; action = "<cmd>set spell!<CR>"; options.desc = "Toggle spell check"; }
      { mode = "n"; key = "<leader>th"; action = "<cmd>set hlsearch!<CR>"; options.desc = "Toggle search highlight"; }
      
      # SPC q - Quit
      { mode = "n"; key = "<leader>qq"; action = "<cmd>qa<CR>"; options.desc = "Quit all"; }
      { mode = "n"; key = "<leader>qQ"; action = "<cmd>qa!<CR>"; options.desc = "Force quit all"; }
      { mode = "n"; key = "<leader>qr"; action = "<cmd>source %<CR>"; options.desc = "Reload config"; }
      
      # Classic vim keybinds still available
      { mode = "n"; key = "gd"; action = "<cmd>lua vim.lsp.buf.definition()<CR>"; options.desc = "Go to definition"; }
      { mode = "n"; key = "gr"; action = "<cmd>lua vim.lsp.buf.references()<CR>"; options.desc = "Go to references"; }
      { mode = "n"; key = "K"; action = "<cmd>lua vim.lsp.buf.hover()<CR>"; options.desc = "Hover documentation"; }
      { mode = "n"; key = "[d"; action = "<cmd>lua vim.diagnostic.goto_prev()<CR>"; options.desc = "Previous diagnostic"; }
      { mode = "n"; key = "]d"; action = "<cmd>lua vim.diagnostic.goto_next()<CR>"; options.desc = "Next diagnostic"; }
      
      # Window navigation (classic)
      { mode = "n"; key = "<C-h>"; action = "<C-w>h"; options.desc = "Window left"; }
      { mode = "n"; key = "<C-l>"; action = "<C-w>l"; options.desc = "Window right"; }
      { mode = "n"; key = "<C-j>"; action = "<C-w>j"; options.desc = "Window down"; }
      { mode = "n"; key = "<C-k>"; action = "<C-w>k"; options.desc = "Window up"; }
    ];
  };
}
