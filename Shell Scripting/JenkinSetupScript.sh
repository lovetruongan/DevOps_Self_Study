#!/bin/bash


#LOGIC TO CHECK THE TYPE OF DISTRIBUTION (REDHAT OR DEBIAN)

yum-help >> /tmp/log1

if [ $? -eq 0]

## "$?" STORES THE EXIT CODE OF THE MOST RECENT COMMAND then

 echo "RPM Based OS Detected"

 echo "Installing Java-JDK, Jenkins, Maven"

 sleep 3

 sudo yum install java-1.8.0- openjdk -y

 sudo yum install java-1.8.0- openjdk-devel -y

 sudo yum install wget -y

 sudo wget -O/etc/yum.repos.d/jenkins.repo http://pkg.jenkins- ci.org/redhat/jenkins.repo

 sudo rpm -- import https://jenkins-ci.org/redhat/jenkins- ci.org.key

 sudo yum install Jenkins -y

 sudo yum install maven -y

 sudo yum install git -y

 echo "Configuring services.... Please Wait"

 sleep 5

 sudo service iptables stop

 sudo service Jenkins start

else

 echo "Debian Based OS Detected"

 sleep 3

 echo "Installing Java-JDK, Jenkins, Maven"

 sudo apt-get update

 sudo apt-get install openjdk-8- jdk -y

 sudo apt-get install openjdk-8- jre -y

 sudo apt-get install maven -y

 sudo apt-get install wget -y

 wget -q -O- https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

 sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

 sudo apt-get update -y

 sudo apt-get install jenkins -y

 sudo apt-get install git -y

 TING

 HITECTURES

 EVELOPMENT

 echo "Configuring services.... Please Wait"

 sleep 5

 sudo systemctl stop ufw

 sudo systemctl start jenkins
fi
