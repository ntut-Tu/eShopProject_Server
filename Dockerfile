# 使用 OpenJDK 部署 JAR 文件
FROM openjdk:17-jdk-alpine
VOLUME /app/uploads
ARG JAR_FILE=target/eshop-app.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
