# Spring PetClinic DevOps Project — Progress Log

## Project Overview

This project aims to build an end-to-end DevOps workflow for Spring PetClinic, covering CI/CD automation, containerization, Kubernetes deployment, GitOps, and monitoring.

**Application Repository:** https://github.com/moamenothman/spring-petclinic

**DevOps Repository:** https://github.com/moamenothman/spring-petclinic-DevOps

## Completed Work

### 1. Jenkins CI/CD Pipeline

- Configured a Jenkins Pipeline using Pipeline Script from SCM.
- Checked out the DevOps repository and application source code separately.
- Used Maven with Java 17 to verify and package the application.
- Prepared the application JAR and Dockerfile as a Docker build context.
- Built and tagged the Docker image using the Jenkins build number.
- Configured Docker Hub authentication through Jenkins Credentials.
- Pushed the versioned image and `latest` tag to Docker Hub.
- Added post-build cleanup for local Docker images and temporary files.

### 2. Docker Image

- Built the Spring PetClinic application image.
- Published the image to the public Docker Hub repository:

  `moamenothman1/spring-petclinic`

- Successfully published and tested image tag `6`.

### 3. Local Application and Database Validation

- Started a MySQL 8.4 container.
- Created a dedicated Docker network for application-to-database communication.
- Configured the PetClinic container to use the MySQL profile.
- Connected the application to MySQL using environment variables.
- Verified successful database connectivity from the application logs.
- Confirmed that the application returned HTTP 200 locally.

**Local application URL:** http://localhost:18080/

### 4. Current Local Resources

| Resource | Name |
|---|---|
| Application container | `petclinic-validation` |
| MySQL container | `petclinic-mysql` |
| Docker network | `petclinic-net` |
| MySQL data volume | `petclinic-mysql-data` |
| Tested application image | `moamenothman1/spring-petclinic:6` |

## Planned Work

### 5. Kubernetes Deployment

- Create a MySQL StatefulSet.
- Configure persistent storage using a PersistentVolumeClaim.
- Create a Kubernetes Secret for database credentials.
- Reference the Secret from both MySQL initialization settings and the application Deployment.
- Create a MySQL Service for internal cluster communication.
- Deploy PetClinic and verify application-to-database connectivity.
- Configure health checks, resource requests and limits, and appropriate access controls.

### 6. Helm and GitOps

- Package Kubernetes resources using Helm.
- Integrate Argo CD for GitOps-based deployment.
- Separate application image updates from infrastructure configuration.

### 7. Monitoring and Observability

- Integrate Prometheus and Grafana.
- Monitor application and cluster health.
- Configure dashboards and alerts.

## Current Status

**Last completed milestone:** Docker image successfully published and the application verified locally with MySQL.

**Next milestone:** Prepare Kubernetes manifests, starting with MySQL StatefulSet, persistent storage, Secret, and Service.

**Important:** Planned work is not considered completed until it has been implemented and tested successfully.

