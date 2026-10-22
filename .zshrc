eval "$(starship init zsh)"

source ~/.config/zsh/modules/env.zsh
eval "$(zoxide init zsh)"
source $ZSH/oh-my-zsh.sh

plugins=(git fzf extract sudo colored-man-pages web-search copypath copyfile last-working-dir history safe-paste jsontools)

# 禁用 zsh 的"魔术功能"（粘贴 URL 时自动加反斜杠转义）
DISABLE_MAGIC_FUNCTIONS="true"

ENABLE_CORRECTION="false"

# 补全等待时显示红色小点
COMPLETION_WAITING_DOTS="true"
source ~/.config/zsh/modules/source-module.zsh

fpath+=~/.config/zsh/zfunc
# GHCup（Haskell 工具链管理器）环境加载
[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env"

# 加载用户自定义的环境变量/脚本
. "$HOME/.local/bin/env"

chpwd(){
  p=$(pwd)
  if  [ "$p" =  "/home/lizi/projects" ];   then 
      bat $p/roadmap.md; 
  else 
      ls 
  fi 
}

# bun completions
[ -s "/home/lizi/.bun/_bun" ] && source "/home/lizi/.bun/_bun"
#compdef opencode
###-begin-opencode-completions-###
#
# yargs command completion script
#
# Installation: opencode completion >> ~/.zshrc
#    or opencode completion >> ~/.zprofile on OSX.
#
_opencode_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" opencode --get-yargs-completions "${words[@]}"))
  IFS=$si
  if [[ ${#reply} -gt 0 ]]; then
    _describe 'values' reply
  else
    _default
  fi
}
if [[ "'${zsh_eval_context[-1]}" == "loadautofunc" ]]; then
  _opencode_yargs_completions "$@"
else
  compdef _opencode_yargs_completions opencode
fi
###-end-opencode-completions-###

