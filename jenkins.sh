#!/bin/bash

#Description:Jenkins Installation

#Author:Alex

#Date:Feb 25 2022

echo "To install jenkins on centos server we need these steps"

sleep 4

echo "THE FIST STEP IS TO INSTALL JAVA"


sleep 4

sudo yum install java-1.8.0-openjdk-devel -y


sleep 4 

echo "THE SECOND STEP IS TO ENABLE THE JENKINS REPOSITORY"
sleep 4

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo -y



echo "the bellow command willbe use if wget is not install in you system"
sleep 4
sudo yum install wget -y



echo "let disable the key check on the repo"
sleep 4
sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo -y

echo "NOW WE ARE INSTALLING THE LATEST JENKINS VERSION"

sleep 4

sudo yum install jenkins -y


echo " let start the jenkins service"

sleep 4

sudo systemctl start jenkins 


echo " let check the jenkins status"


sleep 4


sudo systemctl status jenkins 

echo "we almost done but before we go let's setup jenkins in our browser"

sleep 4
sudo systemctl enable jenkins 



echo " to be able to run jenkins we need to adjust the firewall ......."



sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp 

 sudo firewall-cmd --reload

echo " now that we get all the proccess lets run this command to get the ip address that will take us online"

sleep 4

echo " do not forget to add the specific port which is port 8080"

sleep 4


echo "THANK YOU FOR YOUR TRUST WE HOPE TO SEE SOON!"
















 
