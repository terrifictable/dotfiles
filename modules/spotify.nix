{ ... }:
{
  services.spotifyd = {
    enable = true;

    settings = {
      global = {
        device_name = "nixos";

        backend = "alsa";
      };
    };
  };
}
