export ZSH="/usr/share/oh-my-zsh"
export ZSH="/usr/share/oh-my-zsh"
export MANPAGER="bat -l man -p"
export FZF_DEFAULT_OPTS="
    --height 40%
    --border
    --layout=reverse
    --preview 'bat --style=numbers --color=always {}'
"
export PATH="$HOME/.cargo/bin:$PATH"      # Rust/Cargo 二进制路径
export TERMINAL="kitty"                    # 默认终端模拟器
export XDG_CURRENT_DESKTOP=Hyprland        # 当前桌面环境
export EDITOR="nvim"                      # 默认编辑器（Helix）
export GITHUB_TOKEN="ghp_1HMljsL8DpPEF9iWPOoZYwESR6fskH0RTOrQ"
export FZF_BASE=/usr/share/fzf
  export BUN_INSTALL="$HOME/.bun" 
  export PATH="$BUN_INSTALL/bin:$PATH" 
  export PATH="$PATH:/usr/bin"
  export PATH="$PATH:/home/lizi/projects/vivado/2026.1/Vivado/bin"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="underline,fg=blue"
