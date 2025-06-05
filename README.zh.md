# Docker Compose 集合

常用软件服务的 Docker Compose 配置集合。

## 概述

本项目提供了各种基础设施服务的即用型 Docker Compose 配置，使开发和测试环境的搭建变得简单。

## 可用服务

- **Redis**: 内存数据结构存储，用作数据库、缓存和消息代理。
- **OpenResty**: 基于 NGINX 和 LuaJIT 的动态 Web 平台。
- **MySQL**: 关系型数据库管理系统。

## 使用方法

每个服务都有自己的目录，包含专用的 Docker Compose 文件和配置：

```
some-docker-compose/
├── redis/              # Redis 服务配置
├── openresty/          # OpenResty 服务配置
├── mysql/              # MySQL 服务配置
├── README.md           # 英文文档
├── README.zh.md        # 中文文档
└── .gitignore          # Git 忽略文件
```

使用任何服务的步骤：

1. 进入服务目录：
   ```bash
   cd <服务名称>
   ```

2. 启动服务：
   ```bash
   docker-compose up -d
   ```

3. 停止服务：
   ```bash
   docker-compose down
   ```

有关特定配置详情和使用说明，请参阅各服务的 README 文件。

## 要求

- Docker 引擎
- Docker Compose

## 许可证

本项目采用 Apache License 2.0 许可 - 详情请参阅 [LICENSE](LICENSE) 文件。 