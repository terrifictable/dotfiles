{ config, pkgs, ... }:
let
  shellAliases = {
    ls = "eza --icons --group-directories-first";
    ll = "eza -lah --icons --git --group-directories-first";
    la = "eza -la --icons --group-directories-first";
    lt = "eza --tree --level=2 --icons --group-directories-first";
    lta = "eza --tree --level=3 --icons --git --group-directories-first";

    clear = "unset NEW_LINE_BEFORE_PROMPT && clear";

    nrs = "sudo nixos-rebuild switch";
    hms = "home-manager switch";
  };
  omz-theme-path = ".oh-my-zsh-custom/themes/lambda-nix.zsh-theme";
in {
  programs.zsh = {
    enable = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 10000;
      save = 10000;
      ignoreDups = true;
      ignoreSpace = true;
      share = true;
      extended = true;
    };

    initContent = ''
      export PATH="$HOME/.local/bin:$PATH"
 
      # fzf helpers
      bindkey '^[[A' history-substring-search-up
      bindkey '^[[B' history-substring-search-down

      # Ctrl+Backspace / Ctrl+Delete
      bindkey '^H' backward-kill-word
      bindkey '^[[3;5~' kill-word

      # Better completion style
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
      zstyle ':completion:*' list-colors "''${(s.:.)LS_COLORS}"
      zstyle ':completion:*' menu select
      zstyle ':completion:*' group-name '''
      zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'

      precmd() {
        if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
          NEW_LINE_BEFORE_PROMPT=1
        elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
            echo ""
        fi
      }
    '';

    oh-my-zsh = {
      enable = true;
      theme = "lambda-nix"; # "jreese";
      custom = "${config.home.homeDirectory}/${omz-theme-path}";
    };

    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.8.0";
          sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
        };
      }
    ];

    inherit shellAliases;
  };
  
  home.file."${omz-theme-path}".source = ../resources/lambda-nix.zsh-theme;


  
  programs.bash = {
    enable = true;

    inherit shellAliases;
  };


  programs.eza = {
    enable = true;

    enableZshIntegration = true;
    icons = "auto";
  };
 
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;

    defaultCommand = "fd --type f --hidden --follow --exclude .git";
    fileWidgetCommand = "fd --type f --hidden --follow --exclude .git";
    changeDirWidgetCommand = "fd --type d --hidden --follow --exclude .git";
  };
}
