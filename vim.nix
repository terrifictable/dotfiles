{ pkgs, ... }:
{
  programs.vim = {
    enable = true;
    defaultEditor = true;
    
    package = (pkgs.vim-full.override { }).customize {
      name = "vim";
      vimrcConfig = {
        packages.myplugins = with pkgs.vimPlugins; {
          start = [ vim-nix ];
          opt = [  ];
        };
        customRC = ''
          syntax enable
          set tabstop=2
          set shiftwidth=2
          set expandtab

          set number
          set relativenumber
        '';
      };
    };
  };
}
