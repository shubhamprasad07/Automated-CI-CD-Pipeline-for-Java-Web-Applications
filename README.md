# Java Web App Deployment with AWS CI/CD

This project demonstrates a fully automated CI/CD pipeline for deploying a Java (JSP) web application to AWS. I built this pipeline from the ground up to gain practical, hands-on experience in automating the software release process, from a `git push` to a live website.

This project involved not just setting up the services, but also troubleshooting common real-world deployment issues related to server configuration, file permissions, and reverse proxy setups, solidifying my skills toward my goal of becoming a DevOps engineer.

<br>

## Table of Contents
- [Architecture](#architecture)
- [Technologies](#technologies)
- [Setup](#setup)
- [Contact](#contact)
- [Conclusion](#conclusion)

<br>

## Architecture
The pipeline follows a fully automated workflow from source code to a live, deployed web application.

*(image)*

The automated workflow is as follows:
1. A developer pushes code from the development environment to the **GitHub** repository.
2. **AWS CodePipeline** detects the change and triggers the entire release process.
3. **AWS CodeBuild** pulls the source code, uses Maven to compile and package it into a `.war` file, and stores this build artifact in an **Amazon S3** bucket.
4. **AWS CodeDeploy** takes the artifact from S3 and automates the deployment onto the target Web Server.
5. The EC2 instance runs the application using **Apache Tomcat** as the servlet container, with **Apache HTTP Server** acting as a reverse proxy to handle incoming web traffic.

<br>

## Technologies
Here's what I used to build this project:

- **Amazon EC2**: The development environment and the deployment target for the web app are Amazon EC2 virtual servers.
- **Key pairs & SSH**: Used for secure access to the EC2 instances for development and troubleshooting.
- **Git & GitHub**: The source code is versioned with Git and stored in a GitHub repository, which acts as the trigger for the pipeline.
- **Maven**: Used as the build automation tool to compile the Java code and package it into a `.war` file.
- **VSCode**: Connected directly to the development EC2 instance for cloud-based coding and file management.
- **Apache Tomcat**: The Java Application Server that runs the deployed `.war` application.
- **Apache HTTP Server**: Used as a reverse proxy to manage incoming traffic on port 80 and forward it to the Tomcat application server.
- **AWS CodeArtifact**: Stores build artifacts and dependencies, ensuring high availability and speeding up the build process.
- **AWS CodeBuild**: A fully managed build service that compiles the source code, runs tests, and produces a ready-to-deploy software package.
- **AWS CodeDeploy**: A service that automates code deployments to any instance, including Amazon EC2 instances and on-premises servers.
- **AWS CodePipeline**: A fully managed continuous delivery service that automates the build, test, and deploy phases of your release process every time there is a code change.

<br>

## Setup
To get this project up and running on your local machine, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/nextwork-web-project.git
   ```

2. Navigate to the project directory:
   ```bash
   cd nextwork-web-project
   ```

3. Install dependencies:
   ```bash
   mvn install
   ```

<br>

## Contact

If you have any questions or comments about my CI/CD project, please contact:

**Shubham Prasad**
- shubhamprasad7777@gmail.com
- [LinkedIn](https://linkedin.com/in/your-profile)

<br>

## Conclusion

Thank you for exploring this project! Building this pipeline has provided invaluable experience in DevOps practices, and I will continue to apply these learnings to future projects.
