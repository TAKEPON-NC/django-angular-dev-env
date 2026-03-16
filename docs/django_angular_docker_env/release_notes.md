# リリースノート

## v0.0.0
- ドキュメント保存用フォルダ `docs/django_angular_docker_env/` の作成
- 開発環境のアーキテクチャ設計および実装計画（`implementation_plan.md`）の策定
  - DBをMySQLに変更、phpMyAdminの追加
- タスク一覧（`task.md`）の作成および完了
- Docker開発環境用設定ファイルの作成
  - `docker-compose.yml` (Frontend, Backend, MySQL, phpMyAdmin)
  - `backend/Dockerfile`, `backend/requirements.txt`
  - `frontend/Dockerfile`
- 配布用初期化スクリプトの作成
  - `setup.bat` (Windows用)
  - `setup.sh` (Mac/Linux用)
- 起動手順書（`walkthrough.md`）の作成
