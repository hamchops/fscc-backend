# fscc-backend
FSCC backend

Implemented a comprehensive Full Stack Coding Challenge focusing on Java development with a cloud-native approach. Leveraged key technologies such as Java, Spring Boot, Spring Cloud, Docker, Docker Compose, Kubernetes, Angular, and React. The project comprises eight components (containers), including four Spring Boot applications and two databases (SQL or NoSQL). The ultimate objective is to achieve the Journey to the Cloud by deploying the challenge on a chosen cloud platform, such as AWS, Azure, IBM Cloud, Google Cloud, or Red Hat OpenShift.

Before You Get Started
Install JDK 1.8 or later.  JDK 1.8 is recommended for the challenge.
Install Node JS
Install Docker Desktop
Preferred IDEs. However, feel free to use the IDE of your liking.
Install Spring Tool Suite (STS) for Java.
Install Visual Studio Code
Create a Docker Hub Account
Create an Cloud Account
Create an GitHub Account
If you are not familiar with Git commands, feel free to find an online training tutorial or enroll in the Udemy Course - Git for Geeks.
Fork the Git repository to make a copy in your repository.
Projects in this Repository
Projects	Description
angular-ui	Angular UI Project
api-gateway	Spring Boot Zuul API Gateway Service
discovery-service	Spring Boot Eureka Discovery Service
employee-db-docker-image	Contains Dockerfile for building MySQL Employee DB
employee-service	Spring Boot Employee Service
login-db-docker-image	Contains Dockerfile for building MySQL Login DB
login-service	Spring Boot Login Service
registration-service	Spring Boot Employee Registration
react-ui	React UI
Deliverables
The coding challenge should be completed in 4 to 6 weeks. Code snippets are included in the projects to speed along your progress. However, you must implement the missing code.

Week 1 - Docker Containterization and Spring Cloud
Udemy Courses
Docker for the Absolute Beginners – Hands On – DevOps - 3.5 hours
Microservices with Spring Cloud - 4.5 hours
Tasks
Create MySQL Docker Images (Login and Employee Databases).
Complete Login Service and Containerize.
Complete Employee Service and Containerize.
Run images using Docker Compose.
Test with Postman and MySQL WorkBench.


Week 2 & 3 - Spring Cloud Continued
Udemy Courses
Microservices with Spring Cloud (continued)
Tasks
Implement Eureka Discovery and Zuul API Gateway Services.
Validate Eureka Discover Service identified: Login, Employee, and API Gateway Services.
Implement Security: oAuth, JWT, etc.
Run using Docker Compose.
Test Services via Zuul API Gateway.
Start Kafka Training


Week 4 - Journey to the Cloud - Backend Services
Kubernetes for the Absolute Beginner – Hands-on - 5.5 hours
Tasks
Deploy backend on Minikube using Kubernetes.
Deploy the application on a Cloud platform using Kubernetes (or use minikube).
Cloud Platforms: IBM Cloud, AWS, Azure, GCP, or Red Hat Open Shift
Test Services via Zuul API Gateway using Postman.
Backend Demonstration
Services must be running on a Cloud platform implemented using Kubernetes (or use minikube).
Be prepared to discuss each service component.


Weeks 5 & 6 - Angular & React
Udemy Courses
Angular Step by Step for beginners - 8 hours
Hello React - React Training for JavaScript Beginners - 6 hours
Tasks
Implement and Containerize Angular UI.
Ensure screen requirements are implemented.
Test Angular UI against service components.
Repeat above steps for the React UI.
Run using Docker Compose.
Week 7 - Journey to the Cloud - Frontend
Tasks
Deploy frontend and backend on Minikube.
Deploy the application on a Cloud platform using Kubernetes (or use minikube).
Cloud Platforms: IBM Cloud, AWS, Azure, GCP, or Red Hat Open Shift
Test application via frontend. Angular and React frontends should be running in parallel.
Complete Application Demonstration
Deploy UI and Backend Services on Minikube.
UI and Service components must be running on a Cloud platform implemented using Kubernetes.
Be prepared to discuss each application component.
Both UIs must run in parallel
Test services via UIs.


Week 8 - Apache Kafka
Udemy Courses
Kafka & Kafka Stream With Java Spring Boot - Hands-on Coding - 16 hours
Tasks
Implement Kafka Server using Docker Compose.
Implement Zookeeper using Docker Compose.
Implement APHQ/KafkaHQ using Docker Compose (optional).
Implement Kafka DB (NoSQL) using Docker Compose.
Implement Kafka Service using Docker Compose.
Run Kafka module using Docker Compose.
Test Kafka Services and AKHQ/KafkaHQ (optional).
Refer to Employee Registration slides for implementation steps.
Run using Docker Compose.
Test with Postman.
