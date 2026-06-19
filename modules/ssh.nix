{ config, ... }:
{
  programs = {
    ssh = {
      enable = true;
      enableDefaultConfig = false;

      settings = {
        "github.com" = {
          HostName = "github.com";
          User = "git";
          IdentityFile = "~/.ssh/github";
        };
      };
    };

    git = {
      enable = true;

      settings = {
        user =  {
          name = "terrifictable";
          email = "terrifictable@terrifictable.xyz";
        };

        init.defaultBranch = "main";
      };
    };
  };

  home.file.".ssh/github".source     = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/home-manager/modules/keys/github.key";
  home.file.".ssh/github.pub".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/home-manager/modules/keys/github.pub.key";
}
