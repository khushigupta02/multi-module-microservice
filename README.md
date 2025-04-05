# Multi-Module Microservices Architecture with API Gateway

###### This project demonstrates a multi-module microservices architecture with an API Gateway that routes requests to multiple services and first registers in the Eureka server.

Services and Endpoints

User Service - Runs on port 8081 and can be accessed via http://localhost:8080/user/message

Admin Service - Runs on port 8082 and can be accessed via http://localhost:8080/admin/message

Welcome Service - Runs on port 8083 and can be accessed via http://localhost:8080/welcome/message

Eureka Server - Runs on port 8761 and can be accessed via http://localhost:8761

API Gateway - Runs on port 8080 and routes requests to the services

### Setup and Running Instructions
Prerequisites
- Java 17+
- Git
- Maven

Running the Services

#### 1. Navigate to the Project Root Folder
- Redirect on parent folder: MultiModuleApplication

### Machine-Specific Scripts for Windows/macOS
####  1. Clean and Install All Modules (Run before starting services)
Command to set execution permissions of clean.sh (macOS/Linux only):
- chmod +x clean.sh
###### Run the script:
- Windows: clean.bat
- macOS/Linux: ./clean.sh
- This script runs mvn clean install to clean and install all Maven dependencies across the multi-module project.

#### 3. Start Eureka Server
Command to set execution permissions of runServer.sh (macOS/Linux only):
- chmod +x runServer.sh
###### Run the script:
- Windows: runServer.bat
- macOS/Linux: ./runServer.sh
- This script starts the Eureka Server, which is essential for service discovery and registration.

#### Start All Microservices
Command to set execution permissions of run.sh (macOS/Linux only):
- chmod +x run.sh
###### Run the script:
- Windows: run.bat
- macOS/Linux: ./run.sh
- This script sequentially starts the User Service, Admin Service, Welcome Service, and API Gateway after verifying Eureka Server is running.

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

### Kill Running Ports (Machine-Specific Scripts)
Command to set execution permissions of kill.sh (macOS/Linux only):
- chmod +x kill.sh
###### Run the script:
- Windows: kill.bat
- macOS/Linux: ./kill.sh
- This script forcefully terminates any processes running on ports commonly used by the application (e.g., 8761, 8080, 8081, 8082, 8083). Use it when ports are stuck or already in use before starting the services.

### Conclusion

This project provides a basic implementation of a microservices architecture using Spring Cloud Gateway and Eureka for service discovery.
