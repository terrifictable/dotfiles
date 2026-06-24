{ config, pkgs, ... }:
{
  system.stateVersion = "26.05"; # Before changing this value read the documentation for this option

  imports = [ 
    ./hardware-configuration.nix

    ./wm.nix
    ./vim.nix
    ./audio.nix
  ];
  
  nix.settings = {
    experimental-features = "nix-command flakes";
  };

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    git wget

    pavucontrol
    pamixer
    playerctl


    (pkgs.dmenu.overrideAttrs (_: {
      src = ./config/dmenu;
      patches = [ ];
    }))
    (pkgs.slstatus.overrideAttrs (_: {
      src = ./config/slstatus;
      patches = [ ];
    }))
    # (pkgs.dwmblocks.overrideAttrs (_: {
    #   src = ./config/dwmblocks;
    #   patches = [ ];
    # }))
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "nixy";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Berlin";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };


  users.users."terrific" = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };
  
  virtualisation.vmware.guest.enable = true;

  console.keyMap = "de";
  services.xserver = {
    xkb = {
      layout = "de";
      variant = "";
    };
  };
}
