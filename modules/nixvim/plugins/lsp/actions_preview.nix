{ ... }:
{
  programs.nixvim = {
    plugins.actions-preview = {
      enable = true;

      settings = {
        backend = "telescope";
      };
    };
  };
}
