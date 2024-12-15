# 使用 Python 3 的基礎映像，基於 Alpine Linux（輕量級）
FROM python:3-alpine3.15

# 設定工作目錄為 /app，所有後續的操作都會在此目錄進行
WORKDIR /app

# 將當前目錄下的所有檔案複製到容器內的 /app 目錄
COPY . /app

# 使用 pip 安裝 Flask
RUN pip3 install Flask

# 暴露容器的 3000 埠，讓外界可以訪問這個應用
EXPOSE 3000

# 指定容器啟動時執行的指令：運行 main.py（假設 main.py 是 Flask 應用的入口）
CMD python main.py

