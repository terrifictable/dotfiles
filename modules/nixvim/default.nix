{ nixvim, nixpkgs, ... }:
{
  imports = [
    nixvim.homeModules.nixvim
  
    ./plugins
    ./options.nix
    ./keybinds.nix
  ];

  home.shellAliases = {
    v = "nvim";
  };

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    nixpkgs.useGlobalPackages = true;
    nixpkgs.source = nixpkgs;
  
    luaLoader.enable = true;

    viAlias = true;
    vimAlias = true;
  };
}
