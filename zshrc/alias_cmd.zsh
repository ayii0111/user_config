# 指令別名
# 要補全別名，要重新啟動 Fig軟件

# ------------------------------ 基本指令相關 ------------------------------
alias bat='bat --paging=never'   # cat 強化版
alias ls='eza -1 --icons -s new' # ls 強化版(覆蓋原 ls)
alias lsa='eza -a -1 --icons -s new'
alias mk='mkdir -p' # 可建立多層目錄
alias man='tldr'    # man 強化版(覆蓋原 man)
alias l='clear'     # 清除畫面

# Dirs
alias ..='cd ..'     # cd 上一層
alias ...='cd ../..' # cd 上兩層

# ------------------------------ 實用別名 ------------------------------
alias nv='nvim'
alias rst='mac restart'                                                 # mac 重開機
alias lo="osascript -e 'tell application \"System Events\" to log out'" # mac 登出
alias cpf='pbcopy <'                                                    # 複製檔案內容
alias zb='z -b'                                                         # z 的退回祖輩目錄
alias cdn='cd "$(/bin/ls -td -- */ | head -n 1)"'                       # cd 到最近建立的目錄
alias m='micro'                                                         # 文本編輯器
alias ytd='/opt/homebrew/Caskroom/miniforge/base/bin/yt-dlp'            # yt 下載
alias -g peco='| /opt/homebrew/bin/peco'                                # grep強化版，可篩選輸出結果
alias -g cpo='| pbcopy'                                                 # 複製指令輸出
# alias -g SaveOput=" --color=always 2>&1 | tee >(sed 's/\x1b\[[0-9;]*m//g' > /tmp/lastOput.txt)" # 自動儲存當前指令輸出
# alias     con='conda'

# tmux (目前沒在用)
# alias tm='tmux'
# alias tml='tmux ls'
# alias tmn='tmux new-session -s'
# alias tmnd='tmux new-session -d -s'
# alias tma='tmux attach-session -t'
# alias tmk='tmux kill-session'
# alias tmka='tmux kill-session -a'
# alias tmks='tmux kill-server'
alias ze='zellij' # 終端視窗管理工具

# 少用別名
alias wget='aria2c -x 16 -s 16 --retry-wait=1'                                                        # wget 強化版
alias vsextinstall="cat $HOME/UserConfig/vsCode/extensionsList | xargs -n 1 code --install-extension" # 批量安裝 vscode 插件列表
alias ccg='c ~/UserConfig/config/Customize\ ChatGPT'                                                  # customize chat gpt 打開自訂的 ChatGPT 的環境檔
alias firr='npx firebase deploy --only firestore:rules'                                               # firebase 部署

# ------------------------------ npm ------------------------------
alias npi='npm init -y' # 快速 npm 初始化
alias npr='npm run'     # npm run 的縮簡
alias npc='npm create'  # npm create 的縮簡
alias pn='pnpm'
