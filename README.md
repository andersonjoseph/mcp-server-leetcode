# LeetCode MCP Server

一个基于Model Context Protocol (MCP)的LeetCode服务器，使用GraphQL查询与LeetCode API交互。

## 功能特点

- 支持查询LeetCode问题、用户信息和竞赛数据
- 通过MCP工具和资源提供结构化访问
- 完整的错误处理
- 模块化架构

## 主要工具

### 问题相关工具
- `get-daily-challenge`: 获取每日挑战
- `get-problem`: 根据slug获取问题详情
- `search-problems`: 搜索满足条件的问题

### 用户相关工具
- `get-user-profile`: 获取用户资料
- `get-user-submissions`: 获取用户提交记录
- `get-user-contest-ranking`: 获取用户竞赛排名

### 竞赛相关工具
- `get-contest-details`: 获取竞赛详情

## 资源

### 问题资源
- `leetcode://daily-challenge`: 每日挑战
- `leetcode://problem/{titleSlug}`: 问题详情
- `leetcode://problems{?tags,difficulty,limit,skip}`: 问题列表

### 用户资源
- `leetcode://user/{username}/profile`: 用户资料
- `leetcode://user/{username}/submissions{?limit}`: 用户提交
- `leetcode://user/{username}/contest-ranking`: 用户竞赛排名

## 快速开始

### 安装依赖
```bash
npm install
```

### 构建项目
```bash
npm run build
```

### 运行服务器
```bash
npm start
```

### 开发模式
```bash
npm run dev
```

## 使用说明

使用Claude for Desktop或其他MCP兼容的客户端连接到此服务器。

### 配置示例（Claude for Desktop）

在Claude for Desktop的`claude_desktop_config.json`文件中添加：

```json
{
  "mcpServers": {
    "leetcode": {
      "command": "node",
      "args": ["/path/to/leetcode-mcp-server/dist/index.js"]
    }
  }
}
```

## 参考
- 这个项目受到[alfa-leetcode-api](https://github.com/alfaarghya/alfa-leetcode-api)的启发
- 使用[Model Context Protocol](https://modelcontextprotocol.io)规范实现