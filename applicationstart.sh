#/bin/bash -xe
cd /home/ec2-user
touch /tmp/cicd.txt
kill $(lsof -t -i:8010)
nohup java -jar webapp-1-0.0.1-SNAPSHOT.jar > /tmp/cicd.txt 2>&1 &
