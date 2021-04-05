# AIS  Heroku

Este proyecto consta de un servidor REST sencillo para la gestión de items.

## Construir la aplicación (en local)

Para construir el JAR del proyecto (y lanzar los test):

```
    ./mvnw clean package
```

## Lanzar la aplicación en local (en local)

Para lanzar la aplicación el local:

```
    java -jar target/items-0.0.1-SNAPSHOT.jar 
```

## Lanzar la aplicación en Heroku

```
    heroku login
    heroku container:login
    heroku container:push web -a ais-heroku
    heroku container:release web
```

