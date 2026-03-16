# Django-Angular Docker Development Environment

フロントエンドに **Angular** 、バックエンドに **Django** 、データベースに **MySQL** を利用したホットリロード付きの開発環境です。Dockerを用いて環境を分離しており、複数名の開発者が容易に同一環境を構築できるように設計されています。

## 特徴
- **フロントエンド**: Angular CLI (Node.js) / Port `4200`
- **バックエンド**: Django (Python) / Port `8000`
- **データベース**: MySQL / Port `3306`
- **DB管理**: phpMyAdmin / Port `8080`

ローカルファイルの変更は、コンテナ内へリアルタイムにマウントされ反映（ホットリロード）されます。

---

## 🚀 利用手順 (Setup)

### 動作要件
- **Docker Installed**: Docker Desktop (Windows/Mac) もしくは Docker Engine & Docker Compose (Linux)

### 起動方法

#### Windows の場合
1. コマンドプロンプトを開き、プロジェクトのルートディレクトリに移動します。
2. `setup.bat` を実行します。
   ```cmd
   setup.bat
   ```

#### Mac / Linux の場合
1. ターミナルを開き、プロジェクトのルートディレクトリに移動します。
2. `setup.sh` に実行権限を付与して実行します。
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

※ スクリプト内で初回のみAngularやDjangoの初期化ファイルの生成が行われ、Dockerコンテナがバックグラウンド(`-d`)で起動します。

---

## 🌐 アクセス先 URL
環境構築が完了すると、ブラウザから各サービスにアクセスできます。

| サービス | URL | 備考 |
|---|---|---|
| **Frontend** (Angular) | [http://localhost:4200](http://localhost:4200) | アプリ画面 |
| **Backend** (Django) | [http://localhost:8000](http://localhost:8000) | APIやDjango管理画面 |
| **phpMyAdmin** | [http://localhost:8080](http://localhost:8080) | `User: root`, `Pass: rootpass` |

---

## ✨ 開発の進め方
- **フロントエンドの編集**: `frontend/` 以下のファイルを編集すると、ブラウザの表示が自動的にリロードされます。
- **バックエンドの編集**: `backend/` 以下のファイルを編集すると、Djangoのサーバーが自動で再起動し、新しいコードが即座に反映されます。

### 環境の終了
作業を終えるときは、以下のコマンドを実行してコンテナを安全に停止します。
```bash
docker compose down
```
※ MySQLのデータベース構築データは `mysql_data` ボリュームとして永続化されているため、次回起動時もデータは引き継がれます。

---

## 📄 詳細ドキュメント
構成図や設計方針などのより詳細なプランについては、`docs/django_angular_docker_env/` 配下のファイルをご参照ください。
