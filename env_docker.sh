#!/bin/sh

# 這個同dockerfile的shell腳本

# 更新並安裝 Python 3 及其相關依賴（Alpine 的基礎映像通常包含最基本的套件）
apk update && apk add --no-cache python3 py3-pip

# 設定工作目錄為 /app
mkdir -p /app
cd /app

# 複製所有檔案到工作目錄（假設所有檔案都已在同一目錄）
cp -r /path/to/source/* /app/

# 使用 pip 安裝 Flask
pip3 install Flask

# 開放 3000 埠，通常這一步是將容器端口映射到主機端口，但對於 shell script 中無直接映射功能，僅為指示
echo "Expose port 3000" # 實際上可以用 netstat 或其他工具檢查端口開放情況

# 執行 Flask 應用
python3 main.py
