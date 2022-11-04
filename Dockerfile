FROM openjdk:8
EXPOSE 8087
ADD target/spring-devops.jar spring-devops.jar
ENTRYPOINT ["java","-jar","spring-devops"]