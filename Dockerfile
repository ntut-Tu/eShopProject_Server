# 基於官方的 Tomcat Docker 映像
FROM tomcat:10.1

# 複製你的 WAR 文件到 Tomcat 的 webapps 目錄中
COPY target/eshop-app.war /usr/local/tomcat/webapps/

# 曝露 Tomcat 服務的端口
EXPOSE 8080

# 啟動 Tomcat
CMD ["catalina.sh", "run"]
