# 暫存層級
# ga 腳本：暫存指定檔案： ga [file] 無參數時，使用 git add --all
alias garm='git reset HEAD' # 刪除暫存：gad [file]，不使用參數則刪除所有暫存，但會保留工作區狀態
# 只能刪除暫存，不能恢復上一次暫存，因為暫存沒有歷史記錄

# gald 腳本：載入暫存狀態：gald [file]
alias gadi='git difftool --extcmd icdiff' # 暫存對比：gadi [file]



# 提交層級
alias  gc='git commit -m' # 一般提交
# gcf 腳本：可直接 git add --all && git commit -m（雖然只有一行但不宜寫成別名，因為參數會變成紅字）
alias  gcren='git commit --amend -m' # 改寫最新提交的訊息
alias  gccov='git add --all && git commit --amend --no-edit' # 覆蓋最新提交的內容
# gc9 腳本L：提交時，僅保留最新9次的提交，從根部刪除多餘提交
alias gcud='git reset --soft HEAD^' # 提交退回，保留兩區狀態
# gcdi 腳本：比對當前檔案狀態與各種提交狀態的差異
# gcdi：無參數時，默認比對當前所有檔案與當前提交狀態差異
# gcdi [檔案]：比對當前指定檔案，與當前提交狀態的差異
# gcdi [提交]：比對當前所有檔案，與指定提交的差異
# gcdi [提交] [檔案]：比對當前指定檔案，與指定提交的差異

# gclc 檢視未推送提交 (需安裝依賴 git-extras)
alias gclc='git local-commits | gsed -E "/Author/d; /^$/d; /commit / s|^|\n|; /File:/ s|    File:||; s/commit ([0-9a-z]{7}).*/commit \1/"'

# gcld 腳本：載入歷史提交
# gcld [提交] [檔案]：可指定檔案，來載入歷史提交的檔案狀態
# 無參數時，所有檔案都會被載入當前提交狀態
# 僅有提交參數時，將所有檔案載入該提交狀態
# 僅有檔案參數時，將該檔案載入當前提交狀態

# gcrm 腳本：移除歷史提交
# gcrm [提交]：可以將歷史提交移除，並且保留當前工作變動
# 無參數時，默認會移除上一個提交
alias  gref='git reflog' # 檢視提交操作的歷史
# gcbt 腳本：回溯提交
# bt 為 Back in time 的簡稱 (時光倒流)
# gcbt [提交]：回溯到指定的提交
# 無參數時，默認會回溯上一個提交

# git stamp 在最新提交訊息添加訊息

# grebs 腳本：(並非純 rebase 而是有 squash 的腳本) 在同分支中變基（合併提交）
# grebsud 腳本：取消剛才的變基
alias gmer='git merge'
alias greb='git rebase'

# 時光記錄
# alias grefe='git reflog expire --expire=now --all' # 清除 reflog 記錄（不建議操作）
# alias gprun='git gc --prune=now' # 清理懸空提交

# 提交歷史的檢視
alias   gl='git log' # 通常不會直接用來瀏覽，可以用來做腳本
alias  glo='git log --oneline' # 顯示當前分支的提交歷史
# glg 腳本：圖形化分支提交歷史
# glg [分支1 分支2]  可僅檢視指定分支提交歷史 (追蹤分支格式： 遠端倉庫/追蹤分支)
# glg [分支]  若僅使用一個分支參數時，同時檢視本地分支與追蹤分支 (可用於比較兩個分支的歷史)
# glg  無參數時，顯示所有分支提交歷史



# 分支層級
alias  gb='git branch'

# 檢視本地分支
alias gbl='git branch'

alias gch='git checkout' # 載入某提交，並使用 HEAD 特殊狀態
# gch <提交 or 追蹤分支>：使用 HEAD分離狀態，並載入指定提交 or 追蹤分支的最新提交
# gch <本地分支>：使用 HEAD附著狀態，並載入該本地分支最新提交
# HEAD 分離狀態，命令提示符會顯示「@提交ID」
# HEAD 附著狀態，命令提示符會顯示「當前分支」

alias  gbla='git branch' # 新建本地分支：gbla 新分支 [提交]，不使用提交參數則為當前提交
alias  gchb='git checkout -b' # 追蹤分支儲存成新本地分支：gblac 新分支 <遠端倉庫/追蹤分支>
alias  gbld='git branch -d' # 刪除本地分支：gbld <本地分支>
alias gbldd='git branch -D' # 強制刪除本地分支：gbldd <本地分支>
alias gbren='git branch -m' # 重新命名本地分支：gbren [舊分支名] <新分支名>，單一參數默認為修改當前分支名

# 追蹤分支操作
alias  gbt='git branch -r' # 檢視追蹤分支
alias gbtf='git fetch' # 拿取追蹤分支：gbtf [遠端倉庫 遠端分支]，無參數默認拿取所有上游分支
# 所謂拿取：可能為新建 or 更新追蹤分支
# gbtd 腳本： 刪除追蹤分支：gbtd [遠端倉庫/追蹤分支] 無參數時默認為當前分支的上游分支(追蹤分支)
# 刪除追蹤分支時，會同時刪除上游分支，僅保留 git branch -vv 的上游分支記錄，但不會刪除相應遠端分支
alias gbtp='git fetch --prune' # 精簡追蹤分支

# 上游分支操作
alias gbu='git branch -vv' # 檢視上游分支
# gbua 腳本：設定當前分支的上游：gbua <遠端倉庫/遠端分支>
alias gbud='git branch --unset-upstream' # (該指令並無參數)僅能刪除當前分支的上游，不能直接刪除其他分支上游


# 遠端分支操作
alias gbr='git ls-remote' # 檢視遠端分支：只會顯示遠端倉庫位址，不會顯示遠端接口
# gbrd 腳本：刪除遠端分支：git push -d <遠端倉庫> <遠端分支> (但不能刪除遠端默認分支)
alias gbrp='git push' # 即推送本地分支到遠端

# 分支工作目錄
alias gw='git worktree list' # 檢視所有分支工作目錄
# gwa 腳本：建立分支目錄
# gwa <本地分支>：若本地分支存在優先以其建立，若不存在則將遠端分支儲存成本分支後再建立
# gwd 腳本：刪除分支目錄
# gwd <本地分支>： 原始參數應使用「分支目錄路徑」，這裡經過優化只要使用分支名稱即可
alias gwp='git worktree prune' # 清理懸空分支工作目錄，並無參數







# 遠端接口設定
alias gmot='git remote' # 簡單瀏覽所有遠端接口
# git remote -v  可檢視遠端接口與位址的對應，但 fetch 與 push 會分開顯示

# 改天有空把遠端接口的添加與設置，結合成一個指令
alias   gmota='git remote add' # gmota <接口名稱> <遠端庫位址>
alias   gmotd='git remote remove' # 刪除遠端接口：gmotd <遠端接口>
alias   gmots='git remote set-url' # 設置遠端接口位址：gmots <遠端接口> <遠端庫位址>
alias gmotren='git remote rename' # 重新命名遠端接口：gmotren <舊名> <新名>


# 推送遠端分支
alias  gp='git push'
alias gpf='git push -f' # 強制推送覆蓋

# 拉取遠端分支
alias  gpul='git pull'
alias  gfet='git fetch'
alias ginfo='git info --no-config'


# 倉庫管理層級
alias  ghclo='gh repo clone' # 可完全取代 git clone指令，也可以直接「用戶名/倉庫名」此種參數格式下載
alias ghinit='git init; touch README.md; git add .; git commit -m  "init"; gh repo create --private --source=. --remote=origin --push'
alias  ghcre='gh repo create --private --source=. --remote=origin --push'
alias ghlist='gh repo list'
alias  ghdel='gh repo delete --yes'

# git 配置
alias  gconf='git config'
alias gconfg='git config --global'