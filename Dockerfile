FROM node:18-slim

RUN npm install -g live-server && npm cache clean --force

# 设置默认工作目录（可选）
WORKDIR /home

EXPOSE 8080

# 容器启动时执行 live-server
CMD ["live-server", "/home"]
