FROM openjdk:17-jdk-alpine


WORKDIR /app

COPY target/spring-employee-service-0.0.1-SNAPSHOT.jar .

EXPOSE 8082

ENTRYPOINT [ "java", "-jar", "spring-employee-service-0.0.1-SNAPSHOT.jar" ]