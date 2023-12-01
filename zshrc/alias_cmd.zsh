# 指令別名
# 要補全別名，要重新啟動 Fig軟件

# 基本指令相關
alias  bat='bat --paging=never'
alias   ls='eza -1 --icons -s new'
alias  lsa='eza -a -1 --icons -s new'
alias   mk='mkdir -p'
alias  man='tldr'
alias    l='clear'
alias -g g='| grep'



# Dirs
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# 實用別名
alias      nv='nvim'
alias     rst='mac restart'
alias     cpf='pbcopy <'
alias -g  cpo='| pbcopy'
alias      zb='z -b'
# alias     con='conda'
alias     ytd='/opt/homebrew/Caskroom/miniforge/base/bin/yt-dlp'
alias       m='micro'
alias      tm='tmux'
alias      tml='tmux ls'
alias      tmn='tmux new-session -s'
alias     tmnd='tmux new-session -d -s'
alias      tma='tmux attach-session -t'
alias      tmk='tmux kill-session'
alias     tmka='tmux kill-session -a'
alias     tmks='tmux kill-server'
alias       ze='zellij'


# 少用別名
alias         wget='aria2c -x 16 -s 16 --retry-wait=1'
alias vsextinstall="cat $HOME/UserConfig/vsCode/extensionsList | xargs -n 1 code --install-extension"


# npm
alias npi='npm init -y'
alias npr='npm run'
alias npc='npm create'
alias pn='pnpm'

alias firr='npx firebase deploy --only firestore:rules'