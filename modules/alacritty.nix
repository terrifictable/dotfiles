{ ... }:
{
  programs.alacritty = {
    enable = true;

    theme = "ayu_dark";
    settings = {
      window = {
        padding = { 
          x = 5; 
          y = 5; 
        };
        decorations = "None";

        opacity = 0.85;
        blur = true;
      };

      terminal.shell = "zsh";
    };
  };
}
