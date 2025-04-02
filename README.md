# MCP Server LeetCode

[![npm version](https://img.shields.io/npm/v/@mcpfun/mcp-server-leetcode.svg)](https://www.npmjs.com/package/@mcpfun/mcp-server-leetcode)
[![license](https://img.shields.io/npm/l/@mcpfun/mcp-server-leetcode.svg)](https://github.com/doggybee/mcp-server-leetcode/blob/main/LICENSE)

一个基于 Model Context Protocol (MCP) 的 LeetCode 服务器，让你的 AI 助手能够访问 LeetCode 的问题、用户信息和竞赛数据。

## 特点

- 🚀 快速访问 LeetCode API
- 🔍 搜索问题、获取每日挑战、查看用户信息
- 🏆 查询竞赛数据和排名
- 🧩 完整支持 MCP 工具和资源
- 📦 提供命令行接口和可编程 API

## 安装

### 全局安装

```bash
npm install -g @mcpfun/mcp-server-leetcode
```

然后可以直接使用命令行运行:

```bash
mcp-server-leetcode
```

### 本地安装

```bash
npm install @mcpfun/mcp-server-leetcode
```

## 使用方法

### 与 Claude for Desktop 集成

在 Claude for Desktop 的 `claude_desktop_config.json` 文件中添加:

```json
{
  "mcpServers": {
    "leetcode": {
      "command": "mcp-server-leetcode"
    }
  }
}
```

对于本地开发:

```json
{
  "mcpServers": {
    "leetcode": {
      "command": "node",
      "args": ["/path/to/dist/index.js"]
    }
  }
}
```

### 作为库使用

```javascript
import { LeetCodeService } from '@mcpfun/mcp-server-leetcode';

// 初始化服务
const leetcodeService = new LeetCodeService();

// 获取每日挑战
const dailyChallenge = await leetcodeService.getDailyChallenge();

// 搜索问题
const problems = await leetcodeService.searchProblems({
  difficulty: 'MEDIUM',
  tags: 'array+dynamic-programming'
});
```

## 可用工具

### 问题相关工具

| 工具名 | 描述 | 参数 |
|--------|------|------|
| `get-daily-challenge` | 获取每日挑战 | 无 |
| `get-problem` | 获取指定问题详情 | `titleSlug` (字符串) |
| `search-problems` | 搜索满足条件的问题 | `tags` (可选), `difficulty` (可选), `limit` (默认20), `skip` (默认0) |

### 用户相关工具

| 工具名 | 描述 | 参数 |
|--------|------|------|
| `get-user-profile` | 获取用户信息 | `username` (字符串) |
| `get-user-submissions` | 获取用户提交历史 | `username` (字符串), `limit` (可选, 默认20) |
| `get-user-contest-ranking` | 获取用户竞赛排名 | `username` (字符串) |

### 竞赛相关工具

| 工具名 | 描述 | 参数 |
|--------|------|------|
| `get-contest-details` | 获取竞赛详情 | `contestSlug` (字符串) |

## 可用资源

### 问题资源

- `leetcode://daily-challenge`: 每日挑战
- `leetcode://problem/{titleSlug}`: 问题详情
- `leetcode://problems{?tags,difficulty,limit,skip}`: 问题列表

### 用户资源

- `leetcode://user/{username}/profile`: 用户资料
- `leetcode://user/{username}/submissions{?limit}`: 用户提交
- `leetcode://user/{username}/contest-ranking`: 用户竞赛排名

## 本地开发

克隆仓库并安装依赖:

```bash
git clone https://github.com/doggybee/mcp-server-leetcode.git
cd mcp-server-leetcode
npm install
```

以开发模式运行:

```bash
npm run dev
```

构建项目:

```bash
npm run build
```

## 许可证

MIT

## 相关项目

- [Model Context Protocol](https://modelcontextprotocol.io) - MCP 规范和文档
- [Claude for Desktop](https://claude.ai/download) - 支持 MCP 的 AI 助手

## 致谢

- 这个项目受到 [alfa-leetcode-api](https://github.com/alfaarghya/alfa-leetcode-api) 的启发
