# AIS  Heroku 1

Este proyecto consta de un servidor REST sencillo para la gestión de items.1

## Desplegar en Heroku

###  PASO 1: Construir la aplicación (en local)

Para construir el JAR del proyecto (y lanzar los test):

```
    ./mvnw clean package
```

###  PASO 2: Construimos la imagen con Docker

```
    docker build -t items:v1 .
```

###  PASO 3: Creamos la aplicación en Heroku

Es necesario sustituir `<HEROKU_APP>` por un nombre ÚNICO 

```
    heroku login
    heroku create <HEROKU_APP>
```

###  PASO 4: Renombramos la imagen

Es necesario que el `tag` de la imagen siga este formato

```
    docker tag items registry.heroku.com/<HEROKU_APP>/web
```

###  PASO 5: Publicamos la imagen en el repositorio de Heroku

```
    heroku container:login
    docker push registry.heroku.com/<HEROKU_APP>/web
```

###  PASO 6: Lanzamos la aplicación en Heroku

```
    heroku container:release web -a <HEROKU_APP>
```

###  PASO 7: Abrimos la aplicación en el navegador

```
    heroku logs --tail -a <HEROKU_APP>
```

###  PASO 8: Abrimos la aplicación en el navegador

```
    heroku container:release web
```

## Ejecutar en local


### Lanzar la aplicación en local con Java


```
    java -jar target/items-0.0.1-SNAPSHOT.jar 
```

### Lanzar la aplicación en local con Docker


```
    docker run -p 8080:8080 items:v1
```

