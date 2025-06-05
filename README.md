# Docker Compose Collection

A collection of Docker Compose configurations for common software services.

## Overview

This project provides ready-to-use Docker Compose configurations for various infrastructure services, making it easy to set up development and testing environments.

## Available Services

- **Redis**: In-memory data structure store, used as a database, cache, and message broker.
- **OpenResty**: A dynamic web platform based on NGINX and LuaJIT.

## Usage

Each service has its own directory with a dedicated Docker Compose file and configuration:

```
some-docker-compose/
├── redis/              # Redis service configuration
├── openresty/          # OpenResty service configuration
├── README.md           # English documentation
├── README.zh.md        # Chinese documentation
└── .gitignore          # Git ignore file
```

To use any service:

1. Navigate to the service directory:
   ```bash
   cd <service-name>
   ```

2. Start the service:
   ```bash
   docker-compose up -d
   ```

3. Stop the service:
   ```bash
   docker-compose down
   ```

See each service's README for specific configuration details and usage instructions.

## Requirements

- Docker Engine
- Docker Compose

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details. 