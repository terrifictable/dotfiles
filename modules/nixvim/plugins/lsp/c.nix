{ ... }:
{
  programs.nixvim = {
    lsp.servers = {
      clangd.enable = true;
      # ccls.enable = true;
    };

    filetype.extension = {
      c = "c";
      h = "c";
    };
  };
}
