##############
# エイリアス設定
###############

# viだろうとvimを開く
alias vi='vim'

# bashrcを開く
alias vbash='vim ~/.bashrc'
# bashrcを保存
alias sbash='source ~/.bashrc'

# date関連
alias date="gdate"

# curl（レスポンス、リクエスト）
alias curlcode='curl -Iv'

# pip3
alias pip=pip3

##################
# git関連
##################

###########
# ブランチ作成の流れ
##########
# 1. gbc develop（作成元のブランチに切り替え）
# 2. gbcb {branch_name}（ブランチを作成）
# 3. gp -u origin {branch_name}（ブランチをリモートに登録）

# ブランチの確認
alias gb='git branch'
# ブランチの一覧
alias gba='git branch -a'
# ブランチの切り替え
alias gbc='git checkout'
# 新規のブランチを作成しそのままチェックアウト
alias gbcb='git checkout -b'
# ブランチの削除
alias gbd='git branch -d'
# ブランチ一覧（追跡ブランチを確認
alias gbv='git branch -vv'

# ステージング
alias ga='git add'
# コミット（メッセージ付き）
alias gc='git commit -m'
# プッシュ
alias gp='git push'
# ステータス
alias gs='git status'
# ステータス2（追跡ブランチ確認
alias gbs='git status -sb'
# プル
alias gpl='git pull'
alias gpld='git pull origin develop'
alias gplm='git pull origin master'

# スタッシュ関連
alias gsl='git stash list'
alias gsa='git stash apply'
alias gss='git stash save'
alias gsd='git stash drop'

alias gre='git grep -n'


###########
# Docker関連
###########
# コンテナの起動
alias docup='docker-compose up -d'
# コンテナの停止
alias docdown='docker-compose down'
# 起動しているコンテナ一覧
alias docps='docker ps'
# 起動していないコンテナ一覧
alias docpsa='docker ps -a'
# スカイチケットのログイン\
alias doclogin='docker exec -i -t Integrated_skyticket /bin/bash'

# コンテナの停止
alias docsp='docker stop'
# コンテナの一括停止
alias dockspl='docker stop $(docker ps -q)'
# コンテナの削除 {container_name}
alias docrm='docker rm'
# コンテナの一括削除
alias docrmal='docker rm `docker ps -a -q`'

# イメージの一覧
alias docima='docker images'
# イメージの削除 {image_id}
alias docrmi='docker rmi'
# イメージの一括削除
alias docrmia='docker rmi `docker images -aq`'


###########
# ログ関連
###########
# 通常のログ
alias gl='git log'
# ログをtree上に表示する
alias glogt='git log --graph --all --format="%x09%C(cyan bold)%an%Creset%x09%C(yellow)%h%Creset %C(magenta reverse)%d%Creset %s"'
# ログをファイル差分と見る
alias glogp='git log -p'

##################
# スカイチケット関連
##################

# 開発環境にログインする
alias sky-dev='sh /Users/yoshi/Project/skyticket-login-shell/dev-skyticket-login.sh'

# 検証環境にログインする
alias sky-stg='sh /Users/yoshi/Project/skyticket-login-shell/stg-skyticket-login.sh'

# 本番環境にログインする（web01）
alias sky-pro-w1='sh /Users/yoshi/Project/skyticket-login-shell/pro-skyticket-login_web01.sh'
alias sky-pro-w2='sh /Users/yoshi/Project/skyticket-login-shell/pro-skyticket-login_web02.sh'
alias sky-pro-w3='sh /Users/yoshi/Project/skyticket-login-shell/pro-skyticket-login_web03.sh'

# 今日の日付を取得する
today=`date +"%Y%m%d"`
# スカイチケットのログを確認する
 # frontail は npm -i frontail -gが必要
alias opskylog='frontail /Users/yoshi/Project/Integrated_local/skyticket/src/dev-skyticket.com/log/error_${today}.log /Users/yoshi/Project/Integrated_local/skyticket/src/dev-skyticket.com/log/access_ssl_${today}.log /Users/yoshi/Project/Integrated_local/skyticket/src/dev-skyticket.com/log/sql_error.log'
alias opsqllog='tail -f /Users/yoshi/Project/Integrated_local/skyticket/src/dev-skyticket.com/log/sqllog/sql.log'
alias skyssllog='tail -f /Users/yoshi/Project/Integrated_local/skyticket/src/dev-skyticket.com/log/error_ssl_${today}.log'

alias skylogt='sh /Users/yoshi/Project/logviewer/init.sh'

##################
# ツアー関連
##################
laravel_today=`date +"%Y-%m-%d"`
# ツアーのログを確認する
alias tourlog='frontail /Users/yoshi/Project/tour-partner/app/src/tour/storage/logs/laravel-${laravel_today}.log'

##################
# その他
##################

# lsよりコマンド打ちやすいllで、色付き隠しファイル込属性区別付きls
alias ll='ls -alFG'

# 直下ディレクトリ全てのファイル名検索
alias figre='find . -type f | grep'
# 直下ディレクトリ全てのファイル内の文章検索
alias stgre='find . -type f | xargs grep'

# rmコマンドは必ず応答をきく
alias rm='rm -i'

# GitHubディレクトリに移動する
alias cdlsky='cd /Users/yoshi/Project/Integrated_local/skyticket/src/dev-skyticket.com/'
alias cdlt='cd '

# ssh接続をしたら背景を変更する
function ssh_set_bgcolor() {
 case $1 in
   # 開発環境の場合
   /Users/yoshi/Project/skyticket-login-shell/dev-skyticket-login.sh ) echo -e "\033]1337;SetProfile=develop\a" ;;
   # 検証環境の場合
   /Users/yoshi/Project/skyticket-login-shell/stg-skyticket-login.sh ) echo -e "\033]1337;SetProfile=stage\a" ;;
   # 本番環境の場合
   /Users/yoshi/Project/skyticket-login-shell/pro-skyticket-login_web01.sh ) echo -e "\033]1337;SetProfile=production\a" ;;
   /Users/yoshi/Project/skyticket-login-shell/pro-skyticket-login_web02.sh ) echo -e "\033]1337;SetProfile=production\a" ;;
   /Users/yoshi/Project/skyticket-login-shell/pro-skyticket-login_web03.sh ) echo -e "\033]1337;SetProfile=production\a" ;;
   # ログを見る場合
   /Users/yoshi/Project/logviewer/init.sh ) echo -e "\033]1337;SetProfile=logviewer\a" ;; 
 esac
 # Ctrl+Cを押下時、背景色を元に戻す
 trap "echo -e '\033]1337;SetProfile=Default\a'" 2
 # exitされた時、背景色を元に戻す
 trap "echo -e '\033]1337;SetProfile=Default\a'" EXIT
 sh $@
}

alias sh='ssh_set_bgcolor'

alias less='less -qR'

alias logview='echo -e "\033]1337;SetProfile=logviewer\a"'
alias defview='echo -e "\033]1337;SetProfile=Default\a"'
