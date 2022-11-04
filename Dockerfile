FROM openjdk:8
EXPOSE 8087
ADD target/spring.jar spring.jar
ENTRYPOINT ["java","-jar","spring.jar"]