{
  description = "devshell for suckless programs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-26.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: 
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.dev = pkgs.mkShell {
        packages = with pkgs; [
          pkg-config
          libX11 libXft libXinerama
          fontconfig
          freetype
          harfbuzz
          gcc
          gnumake
        ];
      };
    };
}
