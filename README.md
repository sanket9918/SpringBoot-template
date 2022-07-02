# Spring Boot MongoDB Docker starter template

This repository is a template for a Java backend

To run the project straight from the editor, use the inbuilt runner.

## To get started with Docker 
 - Compile into JAR (Maven is used here)

```sh
    ./mvnw package
```

 - Then use the Docker compose file to fire up both mongo and SpringBoot app.

 ```sh
    docker compose up
```

App will be available at port 8080.