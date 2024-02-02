FROM openjdk:11

COPY ./ /usr/src/app

WORKDIR /usr/src/app

RUN ./gradlew clean build

CMD ["java", "-jar", "./build/libs/java-springboot-project-0.0.1-SNAPSHOT.jar"]