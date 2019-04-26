FROM openjdk:10-jre-slim

WORKDIR /opt/Lavalink

RUN apt-get update \
&& apt-get install -y curl

COPY Lavalink.jar Lavalink.jar
COPY application.yml application.yml

EXPOSE 2333

CMD ["java", "-jar", "-Xmx2G", "Lavalink.jar"]
