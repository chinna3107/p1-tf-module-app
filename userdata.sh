#!/bin/bash

   set-hostname ${component}

   labauto ansible >>/opt/userdata.log

  # yum install  ansible python3.11-pip.noarch -y >>/opt/userdata.log
 #  yum install  ansible -y >>/opt/userdata.log
  # pip3.11 install botocare boto3 &>>/opt/userdata.log
  # pip3.11 install boto3 &>>/opt/userdata.log

 #pip3 install awsebcli botocore==1.19.63 --upgrade

ansible-pull -i localhost, -U https://github.com/chinna3107/p1-roboshop-ansible1.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log

