FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY target/eureka-0.0.1-SNAPSHOT.jar .

EXPOSE 8761

ENTRYPOINT [ "java", "-jar", "eureka-0.0.1-SNAPSHOT.jar" ]