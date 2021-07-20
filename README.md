# README

# 参考 URL

- docker 環境構築
  - https://sinsoku.hatenablog.com/entry/2021/03/24/100000
- vuejs 導入
  - https://qiita.com/MariMurotani/items/f040e3ce23ece18d50df

# 環境構築

## 事前準備

- Mac の場合 overmind インストールが必要（プロセスを二つ同時にフォアグラウンドで実行させる）
- Win の場合 敦さんフォローお願いします

## 環境構築コマンド

```
docker-compose build # 既存のDockerイメージと名前被りしたときなどエラーになったりします
docker-compose run --rm web bin/setup
```

# ページの増やし方

## vuejs の場合

- `app/javascript/packs/pages/` 配下に `<page名>.vue` を配置する。中身は既存のページ参照すること。
- `app/javascript/packs/router.js` にページのルーティングを追記する。

## vuejs なしの場合

- コントローラー全体で利用する場合は `layout "application_without_vue"` を指定する。アクションごとに指定したい場合もこの応用で。
- あとは普通に views/<controller 名複数形>/index.html.erb など作成

# API 作成の方針

- json の形式操作のため jbuilder は導入済み
- Active Model Serializer を導入するのも良さそう

# 以下デフォルト

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
