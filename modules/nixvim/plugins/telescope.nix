{ lib, pkgs, ... }:
{
  programs.nixvim.plugins.telescope = {
    enable = true;

    extensions = {
      fzf-native.enable = true;
      file-browser.enable = true;
      ui-select.enable = true;
    };
  };
}
