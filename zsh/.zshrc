# Created by newuser for 5.9

# 補完機能を有効にする
autoload -Uz compinit && compinit

# プラグインの読み込み（pacmanで入れた場所を指定）
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# 履歴の設定（1TB SSDを活かして大量に保存）
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

#fastfetch

#ディレクトリ表示
#PROMPT='%n@m %~ %# '
eval "$(starship init zsh)"

# よく使うコマンドの短縮（エイリアス）
alias update='sudo pacman -Syu'

#ssh文字化け修正
alias ssh="kitty +kitten ssh"
#batの設定
alias cat='bat --paging=never'

#ezaの設定
alias ls='eza --icons --git'
alias ll='eza -al --icons --git --header'
alias lt='eza --tree --level=2 --icons'

# 補完メニューを矢印キーで選択可能にし、色を付ける
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# XP-PEN公式ドライバーの設定
alias tab='sudo QT_QPA_PLATFORM=offscreen /usr/lib/pentablet/PenTablet --no-gui > /dev/null 2>&1 &'

# Created by `pipx` on 2026-07-11 13:43:40
export PATH="$PATH:/home/akari272/.local/bin"

# zoxideの設定
evaL "$(zoxide init zsh)"
