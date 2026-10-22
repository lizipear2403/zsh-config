
# 历史命令字串搜索

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# ============================================================
# 用户配置
# ============================================================

# 忽略以空格开头的命令和重复命令，不记入历史
export HISTCONTROL=ignoreboth

# 不记录特定命令到历史文件
export HISTORY_IGNORE="(\&|[bf]g|c|clear|history|exit|q|pwd|* --help)"

# man 手册页使用自定义 less 颜色（绿色标题）
export LESS_TERMCAP_md="$(tput bold 2> /dev/null; tput setaf 2 2> /dev/null)"
export LESS_TERMCAP_me="$(tput sgr0 2> /dev/null)"

# 每次命令执行后立即写入历史，而非仅在 shell 退出时
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
