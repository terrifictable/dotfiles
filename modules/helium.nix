{ helium, ... }: 
{
  imports = [
    helium.homeModules.default
  ];

  programs.helium = {
    enable = true;
  };
}
