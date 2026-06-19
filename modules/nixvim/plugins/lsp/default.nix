{ ... }:
{
  programs.nixvim = {
    plugins = {
      lsp-format = {
        enable = false;
        lspServersToEnable = "all";
      };

      lspconfig = {
        enable = true;
      };

      lspsaga = {
        enable = true;

        settings = {
          lightbulb = {
            enable = true;
            sign = true;
            virtual_text = false;
          };

          outline = {
            auto_close = true;
          };

          ui = { 
            devicons = true;
            code_action = "A"; 
          };
        };
      };
      
      lspkind.enable = true;
    };

    lsp = {
      # inlayHints.enable = true;

      luaConfig.content = ''
        vim.lsp.inlay_hint.enable(true)
        
      '';
    };

    diagnostic.settings = {
      update_in_insert  = true;
      severity_sort     = true;
      virtual_text      = true;
    };
  };

  imports = [
    ./c.nix
    ./nix.nix

    ./actions_preview.nix
  ];
}
