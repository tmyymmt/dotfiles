setopt nonomatch

alias ll='ls -al'
alias windows='nkf -sLw --overwrite'
alias linux='nkf -wLu --overwrite'
alias emacs='emacs --no-windows'
alias s='ssh-agent zsh'
alias sa='ssh-add ~/.ssh/id_ed25519'
alias tail='tail —disable-inotify'

HISTFILE=$HOME/.zsh_history           # 履歴をファイルに保存する
HISTSIZE=100000                       # メモリ内の履歴の数
SAVEHIST=100000                       # 保存される履歴の数
setopt extended_history               # 履歴ファイルに時刻を記録
function history-all { history -E 1 } # 全履歴の一覧を出力する

export PATH=~/bin:~/.local/bin:$PATH
export LANG=ja_JP.utf8
# export LANG=en_US.UTF-8
#export EDITOR="emacs --nowindows"

eval "$(sheldon source)"

. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

# java
. ~/.asdf/plugins/java/set-java-home.zsh
export CLASSPATH=.:$JAVA_HOME/lib
export PATH=$JAVA_HOME/bin:$PATH
