{ pkgs, ... }:
{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    opts = {
      fileencoding = "utf-8";
      number = true;
      cursorline = true;
      relativenumber = true;
      
      signcolumn = "yes";

      tabstop    = 2;
      shiftwidth = 2;
      expandtab  = true;

      breakindent = true;
      undofile = true;
      wrap = false;

      splitbelow = true;
      splitright = true;

      shell = 
        if pkgs ? zsh
        then "${pkgs.zsh}/bin/zsh"
        else "${pkgs.bash}/bin/bash";
    };
  };
}

