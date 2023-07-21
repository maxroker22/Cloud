FROM adoptopenjdk/openjdk11:jre-11.0.19_7-alpine

EXPOSE 5050

ADD target/CloudServiceT-0.0.1-SNAPSHOT-spring-boot.jar ./diploma.jar
ADD src/main/resources ./

CMD ["java", "-jar", "./diploma.jar", "--spring.config.location=application.properties"]