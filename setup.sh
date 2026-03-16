#!/bin/bash
echo "開発環境のセットアップを開始します..."

# バックエンド（Django）の初期化
if [ ! -f "backend/manage.py" ]; then
    echo "Djangoプロジェクトを初期化しています..."
    docker compose run --rm backend django-admin startproject config .
fi

# フロントエンド（Angular）の初期化
if [ ! -f "frontend/angular.json" ]; then
    echo "Angularプロジェクトを初期化しています..."
    docker compose run --rm frontend npx -p @angular/cli ng new frontend-app --directory . --defaults
fi

echo "コンテナをバックグラウンドで起動します..."
docker compose up -d

echo "======================================"
echo "セットアップが完了しました！"
echo "Frontend: http://localhost:4200"
echo "Backend:  http://localhost:8000"
echo "phpMyAdmin: http://localhost:8080"
echo "======================================"
