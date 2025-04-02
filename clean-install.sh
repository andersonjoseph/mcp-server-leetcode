#!/bin/bash

# 删除node_modules和package-lock.json
echo "正在清理旧依赖..."
rm -rf node_modules package-lock.json

# 清理npm缓存
echo "清理npm缓存..."
npm cache clean --force

# 重新安装依赖
echo "重新安装依赖..."
npm install

echo "依赖安装完成！"
