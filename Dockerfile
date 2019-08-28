#基于哪个镜像
FROM java:8-jre-alpine
#复制文件到容器
ADD demo-0.0.1-SNAPSHOT.jar /app.jar
#声明需要暴露的端口
EXPOSE 8080
#配置容器启动后执行的命令,随机数
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]