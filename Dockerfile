FROM adoptopenjdk/openjdk11:jdk-11.0.6_10-alpine-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT [ "java","-jar","/app.jar" ]
