# AWS-DevOps-Pipeline-project

AWS DevOps Project using Git, AWS Code Build, Code Artifacts,  Code Pipeline, Code Deploy , IAM (User,Role,Policy), S3bucket(Artifacts), EC2(Deploy)

### Clone github repository
clone url: git clone https://github.com/Gaurav1517/AWS-DevOps-Pipeline-project.git
cd AWS-DevOps-Pipeline-project/



### Install the CodeDeploy Agent
Ref: https://docs.aws.amazon.com/codedeploy/latest/userguide/codedeploy-agent-operations-install-linux.html

```bash
# update the system
sudo yum update
# Install agent
sudo yum install ruby -y 
sudo yum install wget -y 
# Change to your home directory:
cd /home/ec2-user
# Download the CodeDeploy agent installer: 
# Note: make sure change region us-east-1 to working region.
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
# Set execute permissions on the install file:
chmod +x ./install
# To install the latest version of the CodeDeploy agent:
sudo ./install auto
# start & enable the service and run the following two commands, one at a time:
systemctl start codedeploy-agent
systemctl enable codedeploy-agent
# To check that the service is running, run the following command:
systemctl status codedeploy-agent
```

### Restart after attaching IAM Role
```bash
systemctl restart  codedeploy-agent.service
systemctl status codedeploy-agent.service
```
