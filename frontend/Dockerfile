# frontend/Dockerfile
FROM node:20-alpine

WORKDIR /app

# Angular CLIをグローバルインストール
RUN npm install -g @angular/cli

# Windows環境でのホットリロードのために polling オプションを付与
CMD ["ng", "serve", "--host", "0.0.0.0", "--poll", "2000"]
