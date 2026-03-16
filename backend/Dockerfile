# backend/Dockerfile
FROM python:3.11-slim

# MySQLを扱うために必要なシステムパッケージをインストール
RUN apt-get update && apt-get install -y \
    pkg-config \
    default-libmysqlclient-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# コードはボリュームマウントされるため、初期化時はCMDのみ指定
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
