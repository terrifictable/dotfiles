{ ... }:
{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    nixvimInjections = true;

    settings = {
      highlight.enable = true;
      indent.enable = true;
      autotag.enable = true;
      folding.enable = false;

      ensure_installed = [
        "nix"
        "c" "cpp" 
        "toml" "yaml"
        "html" "javascript" "json" "markdown"
        "bash" "nix" "vim"
      ];
      autoinstall = true;
    };
  };
}
