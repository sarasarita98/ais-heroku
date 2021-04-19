FROM openjdk:11

COPY target/items-0.0.1-SNAPSHOT.jar webapp.jar

CMD java -jar webapp.jar