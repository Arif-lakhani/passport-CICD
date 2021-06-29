FROM openjdk:16-jdk-alpine

COPY . /usr/src/app/
WORKDIR /usr/src/app/
RUN ./gradlew clean build
RUN mv build/libs/demo-1.0.0.jar app.jar

ENTRYPOINT java -jar app.jar
