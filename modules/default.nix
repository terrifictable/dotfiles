{ pkgs, lib, imports, ... }:
{
  imports = [
    ./ssh.nix

    ./dunst.nix
    ./shell.nix
    ./alacritty.nix
    ./nixvim
    ./helium.nix
  ];
}
