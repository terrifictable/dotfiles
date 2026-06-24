setopt prompt_subst

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

local ret_status="%(?:λ:%{$fg_bold[red]%}λ)"
PROMPT='$(lambda_prompt_nix)${ret_status}%{$reset_color%} %~/ $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
