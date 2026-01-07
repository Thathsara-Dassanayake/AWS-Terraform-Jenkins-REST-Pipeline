#!/bin/bash
# 1. Update and install Java 17
sudo apt-get update
yes | sudo apt install openjdk-17-jdk-headless

# 2. Add Jenkins Repository
echo "Waiting for 30 seconds before installing the jenkins package..."
sleep 30
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# 3. Install Jenkins
sudo apt-get update
yes | sudo apt-get install jenkins

# 4. Install Terraform (Corrected to amd64 for 64-bit EC2)
sleep 30
echo "Waiting for 30 seconds before installing Terraform..."
# Changed from linux_386 to linux_amd64
wget https://releases.hashicorp.com/terraform/1.6.5/terraform_1.6.5_linux_amd64.zip
yes | sudo apt-get install unzip
unzip 'terraform*.zip'
sudo mv terraform /usr/local/bin/