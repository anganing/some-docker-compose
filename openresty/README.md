# OpenResty Docker 配置 | OpenResty Docker Configuration

## 中文说明

这是一个使用 `openresty/openresty:1.27.1.2-alpine` 镜像的 Docker Compose 配置。

### 目录结构

```
openresty/                   # 项目根目录
├── docker-compose.yaml      # Docker编排文件
├── conf/                    # Nginx主配置目录
│   └── nginx.conf           # Nginx主配置文件
├── conf.d/                  # Nginx站点配置目录
│   └── default.conf         # 默认站点配置
├── logs/                    # 日志目录
│   ├── access.log           # 访问日志（自动生成）
│   └── error.log            # 错误日志（自动生成）
├── html/                    # 静态网页内容
│   └── index.html           # 默认首页
└── lua/                     # Lua脚本目录
    └── hello.lua            # 示例Lua模块
```

### 使用方法

1. 启动 OpenResty 容器:

```bash
docker-compose up -d
```

2. 访问服务器:
   - 网页服务: http://localhost:80
   - Lua 示例: http://localhost:80/lua

3. 停止容器:

```bash
docker-compose down
```

### 配置说明

- Nginx 主配置在 `conf/nginx.conf`
- 服务器块定义在 `conf.d/*.conf` 文件中
- Lua 脚本存储在 `lua/` 目录中

### 日志

日志存储在 `logs/` 目录:
- `access.log` - HTTP 访问日志
- `error.log` - 错误日志

---

## English Description

This is a Docker Compose configuration using the `openresty/openresty:1.27.1.2-alpine` image.

### Directory Structure

```
openresty/                   # Project root directory
├── docker-compose.yaml      # Docker compose file
├── conf/                    # Nginx main configuration directory
│   └── nginx.conf           # Nginx main configuration file
├── conf.d/                  # Nginx site configuration directory
│   └── default.conf         # Default site configuration
├── logs/                    # Log directory
│   ├── access.log           # Access log (auto-generated)
│   └── error.log            # Error log (auto-generated)
├── html/                    # Static web content
│   └── index.html           # Default homepage
└── lua/                     # Lua scripts directory
    └── hello.lua            # Example Lua module
```

### Usage

1. Start OpenResty container:

```bash
docker-compose up -d
```

2. Access the server:
   - Web service: http://localhost:80
   - Lua example: http://localhost:80/lua

3. Stop container:

```bash
docker-compose down
```

### Configuration Details

- Nginx main configuration is in `conf/nginx.conf`
- Server blocks are defined in `conf.d/*.conf` files
- Lua scripts are stored in the `lua/` directory

### Logs

Logs are stored in the `logs/` directory:
- `access.log` - HTTP access log
- `error.log` - Error log 