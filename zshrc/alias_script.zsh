# zsh_hook 目錄
# 將前次指令與執行結果儲存於 last_command、last_exit_code 全域變數
source ~/UserScripts/zsh_hook/preec.zsh
source ~/UserScripts/zsh_hook/brew_packages.zsh
source ~/UserScripts/zsh_hook/conda_env_hook.zsh
source ~/UserScripts/env.zsh

# pkg_mgr目錄
alias concr='source ~/UserScripts/pkg_mgr/conda_create_env.zsh'  # conda 環境建立
alias conrm='source ~/UserScripts/pkg_mgr/conda_remove_env.zsh'  # conda 環境移除
alias brewi='source ~/UserScripts/pkg_mgr/brew_pack_install.zsh' # brew 包列安裝
alias  npch='source ~/UserScripts/pkg_mgr/npch.zsh'

# vite 目錄
alias                 vconf='source ~/UserScripts/vite/vconf.zsh'                # 快速設定 vite 基本設定
alias                vroute='source ~/UserScripts/vite/modifyRoute.zsh'                # 快速修改 vite 中的 route
alias                 vauto='source ~/UserScripts/vite/vauto.zsh'                # 快速安裝並設定 auto-import
alias                 vcomp='source ~/UserScripts/vite/unplugin-component.zsh'         # 子元件可以不用 import
alias                  vdel='source ~/UserScripts/vite/delete-vite-style.zsh'          # 刪除預設樣式，不可與 vboot腳本一起執行
alias               veslint='source ~/UserScripts/vite/veslint.zsh'
alias                 eslim='source ~/UserScripts/vite/eslim.zsh'
alias                 eslex='source ~/UserScripts/vite/eslex.zsh'
alias                 vboot='source ~/UserScripts/vite/bootstrap.zsh'                  # 整合 bootstrap框架並刪除預設樣式
alias                  vbcp='source ~/UserScripts/vite/vbcp.zsh'                    # 一鍵輸入 bootstrap 的 scss 檔名，來將 node...中的拷貝到專案中，並修改入口檔中的匯入路徑
alias                vaxios='source ~/UserScripts/vite/vaxios.zsh'                      # 快速安裝並配置 axios
alias               vlodash='source ~/UserScripts/vite/vlodash.zsh'                     # 快速安裝並配置 lodash
alias              vstylint='source ~/UserScripts/vite/stylelint.zsh'                  # 快速建立 stylelint 環境
alias                valias='source ~/UserScripts/vite/valias.zsh'
alias                vawait='source ~/UserScripts/vite/vawait.zsh'
alias                  vuse='source ~/UserScripts/vite/vuse.zsh'
alias                vfontA='source ~/UserScripts/vite/vfontA.zsh'
alias                 vtail='source ~/UserScripts/vite/vtail.zsh'
alias                   vcf='source ~/UserScripts/vite/vue-clerk&firebase.zsh'
alias        getMatchedFile='source ~/UserScripts/vite/getMatchedFile.zsh'                 # 用來確認指定檔案是存在.js 或 .ts
alias snippetInsertMainfile='source ~/UserScripts/vite/snippetInsertMainfile.zsh'
alias               cfsyn='source ~/UserScripts/vite/cfsyn.zsh'





# utils 目錄
alias bcon='source ~/UserScripts/scr_con/bcon.zsh'                # 設定檔備份
alias hali='source ~/UserScripts/utils/hash_alignment.zsh'               # hash字符對齊
alias fins='source ~/UserScripts/utils/find_installed.zsh'               # 已安裝軟件地毯搜尋
alias    c='source ~/UserScripts/utils/vscodeCLI.zsh'                   # vscode的指令改寫
# alias   c='source ~/UserScripts/utils/cursorCLI.zsh'
alias  sni='source ~/UserScripts/utils/sni.zsh'
alias  ccg='c ~/UserConfig/config/Customize\ ChatGPT'  # customize chat gpt


# scr_con 目錄
alias   scr='source ~/UserScripts/scr_con/scr.zsh'
alias   con='source ~/UserScripts/scr_con/con.zsh'
alias  ccon='source ~/UserScripts/scr_con/ccon.zsh'
alias  cscr='source ~/UserScripts/scr_con/cscr.zsh'
alias  pcon='source ~/UserScripts/scr_con/pcon.zsh'
alias  pscr='source ~/UserScripts/scr_con/pscr.zsh'
alias chscr='source ~/UserScripts/scr_con/chscr.zsh'           # 確認腳本路徑在 README中存在


# appleScript 目錄
alias  re='source ~/UserScripts/appleScript/re.zsh'                     # Mac iterm2重啟
alias dmo='source ~/UserScripts/appleScript/dmo.zsh'                     # Mac iterm2重啟
alias lmo='source ~/UserScripts/appleScript/lmo.zsh'                     # Mac iterm2重啟


# git 目錄
alias      ga='source ~/UserScripts/git/ga.zsh'                       # 自訂git add無參數模式
alias    gcbt='source ~/UserScripts/git/gcbt.zsh'
alias     gc9='source ~/UserScripts/git/gc9.zsh'         # 保留前五個提交
alias   grebs='source ~/UserScripts/git/grebs.zsh'
alias grebsud='source ~/UserScripts/git/grebsud.zsh'
alias     gcf='source ~/UserScripts/git/gcf.zsh'
alias     gti='source ~/UserScripts/git/gti.zsh'
alias     gtc='source ~/UserScripts/git/gtc.zsh'
alias    gald='source ~/UserScripts/git/gald.zsh'
alias    gcdi='source ~/UserScripts/git/gcdi.zsh'
alias     gtd='source ~/UserScripts/git/gtd.zsh'
alias    gcld='source ~/UserScripts/git/gcld.zsh'
alias    gcrm='source ~/UserScripts/git/gcrm.zsh'
alias    gbtd='source ~/UserScripts/git/gbtd.zsh'
alias    gbrd='source ~/UserScripts/git/gbrd.zsh'
alias    gbua='source ~/UserScripts/git/gbua.zsh'
alias     glg='source ~/UserScripts/git/glg.zsh'
alias     gwa='source ~/UserScripts/git/gwa.zsh'
alias     gwd='source ~/UserScripts/git/gwd.zsh'
alias   gmota='source ~/UserScripts/git/gmota.zsh'
alias    gsma='source ~/UserScripts/git/gsma.zsh'
alias   gsmab='source ~/UserScripts/git/gsmab.zsh'
alias    gsmd='source ~/UserScripts/git/gsmd.zsh'
alias    grlr='source ~/UserScripts/git/grlr.zsh'  # 鎖定指定檔案，其他檔案都退版（且不回影響所有歷史提交）




# file_mgr 目錄
alias  molt='source ~/UserScripts/file_mgr/molt.zsh'                  # 剝去當前目錄
alias    mc='source ~/UserScripts/file_mgr/mkdir_cd.zsh'              # 建立並進入一個目錄
alias    cp='source ~/UserScripts/file_mgr/cp.zsh'             # 複製到某一目錄時，預先建立該目錄
alias  rmal='source ~/UserScripts/file_mgr/remove_all.zsh'            # 刪除當前目錄與目錄中的檔案
alias   ren='source ~/UserScripts/file_mgr/rename.zsh'                # 更改當前目錄名稱
alias touch='source ~/UserScripts/file_mgr/touch.zsh'
alias    ag='source ~/UserScripts/file_mgr/ag.zsh'
alias    fd='source ~/UserScripts/file_mgr/fd.zsh'



zenpi() {
	# zellij action new-pane -d down
	# repeat 4 zellij action resize increase
    # 发送 SIGTSTP 信号暂停当前前台任务
  kill -s SIGTSTP %1
  # 将任务移到后台
  bg %1
}

zle -N zenpi

bindkey '^[[27;5;92~' zenpi