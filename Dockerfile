FROM openjdk:11-jdk-alpine

COPY target/items-0.0.1-SNAPSHOT.jar items-0.0.1-SNAPSHOT.jar

CMD java -jar -Dserver.port=$PORT items-0.0.1-SNAPSHOT.jar