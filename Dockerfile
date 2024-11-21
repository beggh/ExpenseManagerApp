FROM openjdk:17
ADD target/expensetrackerapi-1.0.0.jar expensetrackerapi-1.0.0.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","expensetrackerapi-1.0.0.jar"]