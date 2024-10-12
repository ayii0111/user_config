# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"


source ~/UserConfig/zshrc/zshrc_begin.zsh
source ~/UserConfig/zshrc/zinit.zsh
source ~/UserConfig/zshrc/alias_cmd.zsh
source ~/UserConfig/zshrc/alias_script.zsh
source ~/UserConfig/zshrc/alias_git.zsh
source ~/UserConfig/zshrc/zshrc_end.zsh



PATH=~/.console-ninja/.bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
