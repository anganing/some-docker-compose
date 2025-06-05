# Redis Docker 配置 | Redis Docker Configuration

## 中文说明

这是一个使用 Redis 官方镜像的 Docker Compose 配置。

### 目录结构

```
redis/                      # 项目根目录
├── docker-compose.yml      # Docker编排文件
├── conf/                   # Redis配置目录
│   └── redis.conf          # Redis配置文件
├── data/                   # 数据持久化目录
│   ├── dump.rdb            # RDB持久化文件（自动生成）
│   └── appendonly.aof      # AOF持久化文件（自动生成）
└── logs/                   # 日志目录
```

### 使用方法

1. 启动 Redis 容器:

```bash
docker-compose up -d
```

2. 连接到 Redis:

```bash
docker exec -it redis-server redis-cli
# 如果设置了密码，需要认证
auth yourpassword
```

3. 停止容器:

```bash
docker-compose down
```

### 配置说明

Redis 配置文件位于 `conf/redis.conf`，主要设置包括:
- 网络绑定: 0.0.0.0 (允许所有网络访问)
- 端口: 6379
- 持久化: 启用 RDB 和 AOF
- 内存上限: 2GB
- 内存策略: allkeys-lru (当内存不足时，删除最近最少使用的键)
- 密码保护: 启用 (默认密码: yourpassword)

---

## English Description

This is a Docker Compose configuration using the official Redis image.

### Directory Structure

```
redis/                      # Project root directory
├── docker-compose.yml      # Docker compose file
├── conf/                   # Redis configuration directory
│   └── redis.conf          # Redis configuration file
├── data/                   # Data persistence directory
│   ├── dump.rdb            # RDB persistence file (auto-generated)
│   └── appendonly.aof      # AOF persistence file (auto-generated)
└── logs/                   # Log directory
```

### Usage

1. Start Redis container:

```bash
docker-compose up -d
```

2. Connect to Redis:

```bash
docker exec -it redis-server redis-cli
# If password is set, authenticate
auth yourpassword
```

3. Stop container:

```bash
docker-compose down
```

### Configuration Details

Redis configuration is located in `conf/redis.conf`, with key settings including:
- Network binding: 0.0.0.0 (allows access from all networks)
- Port: 6379
- Persistence: Both RDB and AOF enabled
- Memory limit: 2GB
- Memory policy: allkeys-lru (removes least recently used keys when memory is full)
- Password protection: Enabled (default password: yourpassword) 