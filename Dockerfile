FROM adoptopenjdk/openjdk11:jdk-11.0.6_10-alpine-slim

ARG USER=JAVA_USER
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080

# Adding sudo - alpine linux way of doing this
RUN apk add --update sudo

# Adding a non root user in alpine linux 
RUN adduser -D $USER \
    && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
    && chmod 0440 /etc/sudoers.d/$USER


USER ${USER}
ENTRYPOINT [ "java","-jar","/app.jar" ]
