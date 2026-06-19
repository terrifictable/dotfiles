{ ... }:
{
  services.dunst = {
    enable = true;

    settings = {
      global = {
        follow = "keyboard";
        width  = "(200, 300)";
        height = "(0, 150)";
        offset = "(8, 40)";
      };
    };
  };
}
