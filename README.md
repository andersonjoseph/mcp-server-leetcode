# LeetCode MCP Server

A Model Context Protocol (MCP) server for LeetCode that interacts with the LeetCode API using GraphQL queries.

## Features

- Access LeetCode problems, user information, and contest data
- Structured access through MCP tools and resources
- Comprehensive error handling
- Modular architecture

## Available Tools

### Problem-related Tools
- `get-daily-challenge`: Retrieve the daily challenge problem
- `get-problem`: Get detailed information about a specific problem by its slug
- `search-problems`: Search for problems based on difficulty, tags, and other criteria

### User-related Tools
- `get-user-profile`: Retrieve profile information for a LeetCode user
- `get-user-submissions`: Get submission history for a user
- `get-user-contest-ranking`: Retrieve contest ranking information for a user

### Contest-related Tools
- `get-contest-details`: Get information about a specific contest
- `get-user-contest-ranking`: Retrieve a user's performance in contests

## Resources

### Problem Resources
- `leetcode://daily-challenge`: Current daily challenge problem
- `leetcode://problem/{titleSlug}`: Detailed information about a specific problem
- `leetcode://problems{?tags,difficulty,limit,skip}`: List of problems matching query parameters

### User Resources
- `leetcode://user/{username}/profile`: User profile information
- `leetcode://user/{username}/submissions{?limit}`: User's submission history
- `leetcode://user/{username}/contest-ranking`: User's contest ranking data

## Usage Examples

### Problem Search

```
What are the top 5 easy array problems on LeetCode?
```

This will use the `search-problems` tool with parameters for difficulty level "EASY" and the "array" tag.

### Problem Details

```
Show me details of the "two-sum" problem on LeetCode.
```

This will use the `get-problem` tool with the titleSlug "two-sum" to retrieve comprehensive information about the problem.

### User Profile

```
What is the LeetCode profile information for user "username123"?
```

This will use the `get-user-profile` tool to retrieve statistics and profile data for the specified user.

### Daily Challenge

```
What is today's LeetCode daily challenge?
```

This will use the `get-daily-challenge` tool to retrieve the current day's challenge problem.

## Quick Start

### Install Dependencies
```bash
npm install
```

### Build the Project
```bash
npm run build
```

### Run the Server
```bash
npm start
```

### Development Mode
```bash
npm run dev
```

## Integration Guide

Connect to this server using Claude for Desktop or other MCP-compatible clients.

### Configuration Example (Claude for Desktop)

Add the following to your Claude for Desktop `claude_desktop_config.json` file:

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

## Clean Installation

For a fresh setup, you can use the provided script:

```bash
./clean-install.sh
```

This script will remove existing node_modules and dist directories, install dependencies, and build the project.

## References
- Inspired by [alfa-leetcode-api](https://github.com/alfaarghya/alfa-leetcode-api)
- Implemented using the [Model Context Protocol](https://modelcontextprotocol.io) specification
