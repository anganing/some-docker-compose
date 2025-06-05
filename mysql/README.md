# MySQL Docker 配置 | MySQL Docker Configuration

## 中文说明

这是一个使用 MySQL 8 官方镜像的 Docker Compose 配置。

### 目录结构

```
mysql/                      # 项目根目录
├── docker-compose.yml      # Docker编排文件
├── conf/                   # MySQL配置目录
│   └── my.cnf              # MySQL配置文件
├── data/                   # 数据持久化目录
└── logs/                   # 日志目录
```

### 使用方法

1. 启动 MySQL 容器:

```bash
docker-compose up -d
```

2. 连接到 MySQL:

```bash
# 本地连接
docker exec -it mysql-server mysql -uroot -piboot@2025

# 远程连接
mysql -h <服务器IP> -P 3306 -uroot -piboot@2025
```

3. 停止容器:

```bash
docker-compose down
```

### 配置说明

MySQL 配置文件位于 `conf/my.cnf`，主要设置包括:
- 表名和字段名不区分大小写
- 默认字符集: utf8mb4
- 默认排序规则: utf8mb4_0900_ai_ci
- 允许远程访问
- 使用传统密码认证方式
- root 密码: iboot@2025
- 默认创建数据库: ibootdb

---

## English Description

This is a Docker Compose configuration using the official MySQL 8 image.

### Directory Structure

```
mysql/                      # Project root directory
├── docker-compose.yml      # Docker compose file
├── conf/                   # MySQL configuration directory
│   └── my.cnf              # MySQL configuration file
├── data/                   # Data persistence directory
└── logs/                   # Log directory
```

### Usage

1. Start MySQL container:

```bash
docker-compose up -d
```

2. Connect to MySQL:

```bash
# Local connection
docker exec -it mysql-server mysql -uroot -piboot@2025

# Remote connection
mysql -h <server-ip> -P 3306 -uroot -piboot@2025
```

3. Stop container:

```bash
docker-compose down
```

### Configuration Details

MySQL configuration is located in `conf/my.cnf`, with key settings including:
- Case insensitivity for table and field names
- Default character set: utf8mb4
- Default collation: utf8mb4_0900_ai_ci
- Remote access enabled
- Native password authentication
- Root password: iboot@2025
- Default database: ibootdb 