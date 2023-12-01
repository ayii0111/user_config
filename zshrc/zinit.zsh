# 檢查 zinit 有沒有安裝，若沒有 透過 git clone 安裝
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

# 設定 zinit 環境變數
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk


# zinit ice depth"1"
# zinit light romkatv/powerlevel10k

# 當前指令代碼高亮
zinit light zdharma/fast-syntax-highlighting

# 當輸入的指令中有符合的別名時，會顯示之
zinit ice lucid wait"1"
zinit light djui/alias-tips


# zinit light skywind3000/z.lua
# eval "$(lua $HOME/.local/share/zinit/plugins/skywind3000---z.lua/z.lua --init zsh)"
