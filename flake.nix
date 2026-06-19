{
  inputs = {
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    helium = {
      url = "github:oxcl/nix-flake-helium-browser";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, helium, nixvim, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs-unstable = import nixpkgs-unstable { inherit system; config.allowUnfree = true; };
      pkgs          = import nixpkgs { inherit system; config.allowUnfree = true; };
    in
      {
        homeConfigurations = {
          terrific = home-manager.lib.homeManagerConfiguration {
            pkgs = pkgs;

            modules = [ ./home.nix ];
            extraSpecialArgs = { inherit nixpkgs nixvim helium inputs; };
          };
        };
      };
}
