FROM openjdk:8-jdk

LABEL maintainer "Dipayan Biswas" 

RUN apt-get update && apt-get install -y maven curl

COPY . /usr/src/app/

WORKDIR /usr/src/app/

RUN mvn clean install -Dmaven.test.skip=true

WORKDIR /usr/src/app/target

CMD ["java","-jar","SampleProject-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080
