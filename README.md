# Spring Boot REST Microservice 

REST API written in Spring Boot

## Pre-requisites
  - Download & install [Java](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
  - Download & install [Maven](https://maven.apache.org/download.cgi?Preferred=ftp://mirror.reverse.net/pub/apache/)
   ```bash
    mvn clean install
   ```
  - Download & Install [MySQL](https://www.mysql.com/) Server locally or use an external database (OPTIONAL)

## For Developers
  - Download & install [Spring Tool Suite](https://spring.io/tools3/sts/all/) 


## Installation

  ```bash
  # Clone the repository 
  git clone https://github.com/dipayan/spring-boot-rest-microservice.git
  # Change into the directory
  cd spring-boot-rest-microservice
  # Install all required dependencies with
  mvn clean install -Dmaven.test.skip=true
  ```


## Running the application

  **Start the app**
  ```bash
  java -jar SampleProject-0.0.1-SNAPSHOT.jar
  ```

## Usage

**API Specifications**
  - GET: /api/v1/orders
  - GET: /api/v1/orders/{order_id}
  - POST: /api/v1/orders
  - PUT: /api/v1/orders/{order_id}
  - DELETE: /api/v1/orders/{order_id}

**Example**
Get all orders
curl http://localhost:8080/api/v1/orders/

## Running the application as a Docker container

 ```bash
 cd spring-boot-rest-microservice
 # Build the docker image 
 docker build -t spring-boot-app .
 # Run the docker container and put the port as specified in the .env file
 docker run -d -p 8080:8080 --name spring-boot-app -e PORT=9000 spring-boot-app 
 # Check the logs
 docker logs -f spring-boot-app 
 # Cleaup the container
 docker stop spring-boot-app  && docker rm spring-boot-app 
 ```

## Author

Dipayan Biswas