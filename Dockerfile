# 基础镜像
FROM eclipse-temurin:17.0.15_6-jre-alpine

# 设置工作目录
WORKDIR /app

# 设置时区
ENV TZ=Asia/Shanghai

# 复制 JAR 文件
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

# 暴露端口
EXPOSE 18080

# 设置默认profile
ENV SPRING_PROFILES_ACTIVE=dev

# 启动命令
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", "app.jar"] 