FROM node:alpine3.20

WORKDIR /app

# 复制package文件并安装依赖
COPY package*.json ./
RUN npm install --production

# 复制应用代码
COPY . .

# 暴露端口
EXPOSE 3000

# 启动命令
CMD ["npm", "start"]
