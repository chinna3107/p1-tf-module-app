#!/bin/bash

yum install  ansible -y >>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/chinna3107/p1-roboshop-ansible1.git main.yml -e component=${component} &>>/opt/userdata.log

