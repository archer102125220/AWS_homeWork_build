# 使用 Node 的版本
FROM node:12.16.3

# Node 在容器內的位置
WORKDIR /usr/src/app

# 複製 package 設定
COPY ["package.json", "yarn.lock", "./"]

# 安裝必要的套件並移動到專案的 node_modules 底下
RUN yarn --production --silent && mv node_modules ../

# 第一個 . 是我們本地位置，第二個是 docker 裡面專案的位置，就是將我們專案的程式碼全部複製進去
COPY . .

# 開放對外的 port
EXPOSE 3000

# 執行專案
CMD yarn start