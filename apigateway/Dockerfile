FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY target/gatewaydiscovery-0.0.1-SNAPSHOT.jar .

EXPOSE 8060

ENTRYPOINT [ "java", "-jar", "gatewaydiscovery-0.0.1-SNAPSHOT.jar" ]