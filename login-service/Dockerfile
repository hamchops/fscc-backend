FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY target/login-service-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "login-service-0.0.1-SNAPSHOT.jar" ]