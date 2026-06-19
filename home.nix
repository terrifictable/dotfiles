{ pkgs, /* libs, nixpkgs, */ ... }:
{
  home.username = "terrific";
  home.homeDirectory = "/home/terrific";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    btop 
    pfetch 
    dunst 
    feh

    lf
    fd
    eza 
    fzf 
    ripgrep 
    clang
    
    zsh 
    alacritty 


    # jetbrains mono font
    nerd-fonts.jetbrains-mono
  ];

  fonts.fontconfig.enable = true;


  imports = [ 
    ./modules
  ];

  xsession = {
    enable = true;

    initExtra = ''
      dunst &
      slstatus &
      ~/.fehbg &
    '';
    windowManager.command = "exec dwm";
  };
}

