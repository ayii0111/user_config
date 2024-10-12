# 進入終端時，回到上次離開時的目錄
if [[ -f ~/.lastDir ]] {
  cd "$(<~/.lastDir)"
}


# 環境變數
# 有些環境變數，需在該軟件，在.zshrc中初始化代碼前，先定義好環境變數
# 下面兩行都是給 fig 用的
export PATH="~/.fig/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export BAT_THEME="ansi"

export LS_COLORS="$(vivid generate catppuccin-frappe)"