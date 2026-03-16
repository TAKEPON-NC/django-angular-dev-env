# 開発環境の利用手順 (Walkthrough)

## 概要
この開発環境は、バックエンド（Django）、フロントエンド（Angular）、およびデータベース（MySQL）をDocker Composeで簡単に立ち上げられるようになっています。
`setup.bat`（または `setup.sh`）を実行するだけで、必要なコンテナが構築され、フレームワークの初期化が行われます。

## 動作要件
- Docker Desktop (Windows/Mac) または Docker Engine + Docker Compose (Linux)

## 初回起動手順

### Windowsのユーザー
1. コマンドプロンプトを開き、このディレクトリへ移動します。
2. 以下のコマンドを実行、またはエクスプローラーから `setup.bat` をダブルクリックします。
   ```cmd
   setup.bat
   ```
3. スクリプトが実行され、以下が行われます：
   - データベース（MySQL, phpMyAdmin）の起動
   - Djangoプロジェクトの初期化（`backend` ディレクトリ内）
   - Angularプロジェクトの初期化（`frontend` ディレクトリ内）
   - 全てのコンテナのバックグラウンド起動

### Mac / Linuxのユーザー
1. ターミナルを開き、このディレクトリへ移動します。
2. 以下のコマンドを実行してスクリプトに実行権限を付与し、実行します。
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

## アクセス先
起動後、ブラウザから以下のURLにアクセスして動作を確認できます。

| サービス | URL | 説明 |
|----------|-----|------|
| フロントエンド (Angular) | [http://localhost:4200](http://localhost:4200) | Angularの開発用サーバー |
| バックエンド (Django)    | [http://localhost:8000](http://localhost:8000) | Djangoの開発用サーバー |
| DB管理 (phpMyAdmin)      | [http://localhost:8080](http://localhost:8080) | MySQLのGUI管理ツール (User: root, Pass: rootpass) |

## 開発の進め方
- **フロントエンドの編集**: `frontend/` デレクトリ内のソースを編集すると、ホットリロードによりブラウザ上の表示が即座に更新されます。
- **バックエンドの編集**: `backend/` ディレクトリ内のソースを編集すると、Djangoのサーバーが自動的に再起動し変更が反映されます。

## 終了手順
開発を終了しコンテナを停止する場合は、以下のコマンドを実行します。
```bash
docker compose down
```
※ データベースのデータは `mysql_data` ボリュームに保存されるため、コンテナを終了・再構築しても消えません。
