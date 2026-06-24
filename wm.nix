{ pkgs, ... }:
{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services = {
    displayManager = {
      ly = {
        enable = true;
        x11Support = true;
      };
    };

    xserver = {
      enable = true;

      windowManager.dwm = {
        enable = true;
        package = pkgs.dwm.overrideAttrs {
          src = ./config/dwm;
        };
      };
    };

    picom = {
      enable = true;

      backend = "glx";

      settings = {
        blur = {
          method = "dual_kawase";
          kern = "3x3box";
          size = 2.0;
        };
      };
    };
  };
}

