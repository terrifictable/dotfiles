{ ... }:
{
  programs.nixvim.plugins.lint = {
    enable = true;
    lintersByFt = {
      markdown = ["vale"];
      dockerfile = ["hadolint"];
    };
  };
}
