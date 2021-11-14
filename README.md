# Thoughtworks - Mediawiki Application deployment using CI-CD pipeline

Tech Stacks Used:

1.CI/CD- Jenkins
2.Infra Provisioning- Terraform
3.Container Runtime- Docker
4.Image Artifcatory - DockerHub

steps to reproduce:
1. Login to AWS Console and Create an IAM user with Admin Role.
2. Download the .csv Crdentials
3. As a Best Practise, I have configured my Acess Key ID and Secret access key as a ENV Variables and added to the path so that it can support my Terraform



Tools Needs to be installed on Local Machine:



2. Terraform - https://www.terraform.io/downloads.html -> Windows 64Bit and allow the download.
   unzip terraform.exe and add the AWS Access Key ID and secret access key to Windows Environment Variables.
   
   

Please follow the below steps for deploying the Docker image via Jenkins

1. Clone the Repo- git clone https://github.com/balajirajmohan/equalexperts-iac.git


Please follow the below steps for deploying the Jenkins Server Using Terraform:

 From Local Machine, navigate to equalexperts-iac\Terraform\*resource Folder folder and follow the below steps:

   ```bash
   terraform init 
   terraform validate
   terraform plan
   terraform apply --auto-approve
   ```


2. From Terraform appply output, Please copy the public ip of EC2 vm and 

   ```bash
   http://<Server-public-ip> to login to Server with port 8080 to access Jenkins and Install Plugins accordingly
   ```
   
Establishing Connection between Jenkins Server and Application Server using SSM Agent

1. Create an Role consisting of SSM Permissions to both Jenkins sevrer as well as App server

2. Now, Jenkins server would be able to connect to DockerHost/App-server for Build and Deploy actions

Jenkins Pipleine Creation:

1. In Jenkins go to  New Item → Pipeline, type the name you want for this Pipeline project and then click OK.

2. Following that you can skip all General and Build Trigger options and go straight to the Pipeline section. Here you can include a Pipeline definition named Jenkinsfile from Github.

3. Now we are ready to run the Pipeline and check the output if an error is present on any stage during the run.

Jenkins Pipleine Stages:

1. Cloing our Github

2. Building our image and Push to DockerHub

3. Deploy our image via SSM Agent 



Pre-requisites needs to be done:

1. Add docker permisisons for Jenkins user.
2. Open port 8080 in Jenkins server  to expose the application publicly.
3. Create an IAM role with SSM Permissions for both Jenkins and App server
4. Please note that Jenkins terraform script needs to be execured first








