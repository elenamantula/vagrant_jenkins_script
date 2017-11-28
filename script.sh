#Install Jenkins script

echo "JDK installing"
yum install -y java-1.8.0-openjdk wget

echo "Apache Server installing"
yum install -y httpd

echo "Jenkins getting"
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins-ci.org.key

echo "Jenkins installing"
yum install -y jenkins

echo "Jenkins starting"
sudo /etc/init.d/jenkins restart
systemctl restart jenkins.service
