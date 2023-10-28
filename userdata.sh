#!/bin/bash

yum install  ansible python3.11-pip.roboshop -y >>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/chinna3107/p1-roboshop-ansible1.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log

