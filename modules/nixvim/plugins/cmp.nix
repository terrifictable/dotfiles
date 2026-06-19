{ ... }:
{
  programs.nixvim.plugins = {
    cmp-buffer.enable = true;
    cmp-emoji.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;

      settings = {
        experimental.ghostText.enabled = true;
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
        };

        sources = [
          { name = "path";     }
          { name = "nvim_lsp"; }
          { 
            name = "buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
        ];

        window = {
          completion.border = "solid";
          documentation.border = "solid";
        };

        mapping = {
          "<C-tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-down>" = "cmp.mapping.select_next_item()";
          "<C-up>" = "cmp.mapping.select_prev_item()";
          "<Esc>" = "cmp.mapping.abort()";
          "<C-space>" = "cmp.mapping.complete()";
          "<tab>" = "cmp.mapping.confirm({ select = true })";
          "<S-tab>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };
  };
}
