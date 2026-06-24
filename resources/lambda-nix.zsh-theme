function lambda_prompt_nix() {
  case "${IN_NIX_SHELL:-}" in
    pure|impure)
      echo "%{$fg[blue]%}nix-shell%{$reset_color%} "
      ;;
    1)
      echo "%{$fg[cyan]%}nix-dev%{$reset_color%} "
      ;;
  esac
}

PROMPT='$(lambda_prompt_nix)'$PROMPT
