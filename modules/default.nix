{ pkgs, lib, imports, ... }:
{
  imports = [
    ./ssh.nix

    ./dunst.nix
    ./shell.nix
    ./alacritty.nix
    ./spotify.nix
    ./helium.nix

    ./nixvim
  ];
}
