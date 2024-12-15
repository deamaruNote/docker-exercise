# 建立docker跟執行

# images    設定 / 相對於環境
docker build -t flask .
# container 設定 / 相對於啟動
docker container run -d -p 3000:3000 flask

# other
docker ps

# stop
docker stop "ID..."

env_docker.sh == Dockerfile
