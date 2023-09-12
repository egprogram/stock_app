# prophetで株分析をするアプリを作成する

## 環境構築

- RAILS
- MYSQL

## データ設計

- stock テーブル
  - columns
    - id
    - code
    - name

### エンドポイント設計

### 銘柄一覧

- endpoint
  - get /stocks
- content
  - Stock.all

### 分析

- endpoint
  - get /stocks/:code
- params
  - code=xxx
- content
  - Stock.find_by(code: params[:code])
  - Faraday.get(https://xxxx.com/xxxx?code=params[:code]) 
    - csvを取得
  - csvを元に、prophetで分析
  - 図を描画
