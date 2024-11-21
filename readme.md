# ExpenseManager Application
This repository manages expenses and performs CRUD

---
# Running on AWS EC2 using docker network using free tier amd64
 - Docker hub is used as registry
 - username for tagging - **dockermerch**
 - app is using docker-hub postgres:16 image


# Installation and Prerequisites
- Built on Java 11+ and Springboot framework with Maven project

# How to Deploy changes
- Packaging && Building
  - docker network create springboot-postgres-net
  - mvn clean install
  - docker build --platform linux/amd64 -t expensemanagerapplication .
  - docker tag expensemanagerapplication:latest dockermerch/expensemanagerapplication:latest
  - docker push dockermerch/expensemanagerapplication:latest
- Running in EC2
  - docker pull dockermerch/expensemanagerapplication:latest
  - docker run --name my-springboot-app --platform linux/x86_64 --network=springboot-postgres-net -e SPRING_DATASOURCE_URL=jdbc:postgresql://my-postgres-db:5432/expense -e SPRING_DATASOURCE_USERNAME=postgres -e SPRING_DATASOURCE_PASSWORD=mypassword -p 8080:8080 -d dockermerch/expensemanagerapplication:latest

