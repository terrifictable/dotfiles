{ ... }:
{
  programs.nixvim.keymaps = [
    {
      action = ":nohl<CR>";
      key = "<leader>h";
      mode = "n";
    }
 
    {
      action = ":m '<-2<CR>gv=gv";
      key = "K";
      mode = "v";
    }
    {
      action = ":m '>+1<CR>gv=gv";
      key = "J";
      mode = "v";
    }



    # Neotree
    {
      action = ":Neotree filesystem<CR>";
      key = "<leader>nn";
      mode = "n";
    }
    {
      action = ":Neotree toggle<CR>";
      key = "<leader>nt";
      mode = "n";
    }
    {
      action = ":Neotree git_status<CR>";
      key = "<leader>ng";
      mode = "n";
    }
    {
      action = ":Neotree buffers<CR>";
      key = "<leader>nb";
      mode = "n";
    }


    # Buffers
    {
      action = ":bnext<CR>";
      key = "<leader>bn";
      mode = "n";
    }
    {
      action = ":bprev<CR>";
      key = "<leader>bv";
      mode = "n";
    }
    {
      action = ":Bwipeout<CR>";
      key = "<leader>bd";
      mode = "n";
    }

 
    # Telescope
    {
      action = "<CMD>Telescope find_files<CR>";
      key = "<leader>f";
      mode = "n";
    }

    # Terminal
    {
      action = "<CMD>ToggleTerm<CR>";
      key = "<leader>t";
      mode = "n";
    }
    {
      action = "<C-\\><C-n>";
      key = "<Esc>";
      mode = "t";
    }


    # LSP
    {
      action = "<CMD>LspStop<CR>";
      key = "<leader>Lq";
      mode = "n";
    }
    {
      action = "<CMD>LspStart<CR>";
      key = "<leader>Ls";
      mode = "n";
    }
    {
      action = "<CMD>LspRestart<CR>";
      key = "<leader>Lr";
      mode = "n";
    }
    
    {
      action = "<CMD>Lspsaga finder<CR>";
      key = "<leader>lr";
      mode = "n";
    }
    {
      action = "<CMD>Telescope lsp_document_symbols<CR>";
      key = "<leader>ls";
      mode = "n";
    }
    {
      action = "<CMD>Telescope lsp_workspace_symbols<CR>";
      key = "<leader>lS";
      mode = "n";
    }
    {
      action = "<CMD>Lspsaga hover_doc<CR>";
      key = "<leader>i";
      mode = "n";
    }
    {
      action = "<CMD>Lspsaga outline<CR>";
      key = "<leader>lo";
      mode = "n";
    }
    {
      action = "<CMD>Lspsaga show_cursor_diagnostics<CR>";
      key = "<leader>d";
      mode = "n";
    }
    {
      action = "<CMD>Lspsaga show_buf_diagnostics<CR>";
      key = "<leader>ld";
      mode = "n";
    }
    {
      action = "<CMD>Lspsaga show_workspace_diagnostics<CR>";
      key = "<leader>lD";
      mode = "n";
    }
    {
      action = "<CMD>lua require(\"actions-preview\").code_actions()<CR>";
      key = "<leader>.";
      mode = "n";
    }
  ];
}
