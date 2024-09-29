# setopt配置（即 shell行為設定）
setopt interactivecomments # 可在shell對話中使用註解
setopt nonomatch           # 使用*而沒有匹配時，不會報錯
setopt EXTENDED_GLOB       # 啟用強化萬用字元

# eval "$(zoxide init zsh)"
# eval "$(starship init zsh)"
eval "$(lua $(brew --prefix z.lua)/share/z.lua/z.lua --init zsh)"

# bindkey 配置（放在檔尾可以避免熱鍵設定被覆蓋）
# 下面刪除整行的熱鍵，會對自動補全造成 bug
# bindkey '^J' backward-kill-line

export RUNEWIDTH_EASTASIAN=0 # 可解決 superfile 工具面板錯位的問題
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export JAVA_HOME='/opt/homebrew/Cellar/openjdk/21.0.2/libexec/openjdk.jdk/Contents/Home'

# 歷史命令配置
# 抄來的，改天有再研究，再補上影片來源
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# yazi 的額外功能（使用函式來封裝）
function yy() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/Users/ayii/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# 暫不啟用 zellij (距分割視窗的功能，但滑鼠選取變難用了)
# eval "$(zellij setup --generate-auto-start zsh)"

# 套用了 pure 主題，且 pure 也有個人化修改
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/pure.omp.json)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
    . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
  else
    export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
  fi
fi
unset __conda_setup
# <<< conda initialize <<<
