{ ... }:
{
  programs.nixvim = {
    plugins = {
      lz-n.enable = true;
      nix.enable = true;
    };

    imports = [ ];
  };
  
  imports = [
    ./lsp

    ./ui.nix
    ./cmp.nix
    ./lint.nix
    ./comment.nix
    ./neotree.nix
    ./lualine.nix
    ./autopairs.nix
    ./telescope.nix
    ./toggleterm.nix
    ./bufferline.nix
    ./treesitter.nix
  ];
}
