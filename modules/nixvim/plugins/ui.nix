{ ... }:
{
  programs.nixvim = {
    colorschemes.ayu.enable = true;
    
    plugins = {
      web-devicons.enable = true;
      
      transparent = {
        enable = true;
        autoLoad = true;
      };
      
      which-key = {
        enable = true;
        autoLoad = true;

        settings.preset = "modern";
      };
    };
  };
}
