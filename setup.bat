@echo off
echo 開発環境のセットアップを開始します...

REM バックエンド（Django）の初期化
if not exist backend\manage.py (
    echo Djangoプロジェクトを初期化しています...
    docker compose run --rm backend django-admin startproject config .
)

REM フロントエンド（Angular）の初期化
if not exist frontend\angular.json (
    echo Angularプロジェクトを初期化しています...
    docker compose run --rm frontend npx -p @angular/cli ng new frontend-app --directory . --defaults
)

echo コンテナをバックグラウンドで起動します...
docker compose up -d

echo ======================================
echo セットアップが完了しました！
echo Frontend: http://localhost:4200
echo Backend:  http://localhost:8000
echo phpMyAdmin: http://localhost:8080
echo ======================================
pause
