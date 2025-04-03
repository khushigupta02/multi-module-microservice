# Multi-Module Microservices Architecture with API Gateway

### This project demonstrates a multi-module microservices architecture with an API Gateway that routes requests to multiple services and first registers in the Eureka server.
Services and Endpoints

User Service - Runs on port 8081 and can be accessed via http://localhost:8080/user/message

Admin Service - Runs on port 8082 and can be accessed via http://localhost:8080/admin/message

Welcome Service - Runs on port 8083 and can be accessed via http://localhost:8080/welcome/message

Eureka Server - Runs on port 8761 and can be accessed via http://localhost:8761

API Gateway - Runs on port 8080 and routes requests to the services

### Setup and Running Instructions
Prerequisites
- Java 17+
- Spring Boot
- Maven
- Eureka Server

### Running the Services
1. Run Clean Script (Before Running Services)
- clean.bat
- This cleans and installs all Maven dependencies for the parent project.

2. Start Eureka Server
- runServer.bat
- This starts the Eureka Server.

3. Run All Services
- run.bat
- This starts API Gateway, User Service, Admin Service, and Welcome Service.

### Accessing Services via Gateway

Once all services are up and running, you can access them through the gateway at port 8080:

User Service: http://localhost:8080/user/message

Admin Service: http://localhost:8080/admin/message

Welcome Service: http://localhost:8080/welcome/message

### Postman Collection

A Postman collection is attached to this project for making requests to the microservices via the API Gateway. You can import the collection into Postman to test the endpoints easily.

### Eureka Server

Eureka Server can be accessed at:
http://localhost:8761

### Conclusion

This project provides a basic implementation of a microservices architecture using Spring Cloud Gateway and Eureka for service discovery.
