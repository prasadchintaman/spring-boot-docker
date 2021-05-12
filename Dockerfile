FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY target/demo1-0.0.1-SNAPSHOT.jar .

RUN mkdir destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add
EXPOSE 9090
ENTRYPOINT ["java","-jar","demo1-0.0.1-SNAPSHOT.jar"]
