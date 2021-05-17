FROM centos:8

COPY ./files/repos/* /etc/yum.repos.d/
 
WORKDIR /opt/

RUN dnf install -y epel-release
RUN dnf install -y erlang 

RUN  dnf install -y rabbitmq-server

RUN systemctl start rabbitmq-server 
    
RUN rabbitmq-plugins enable rabbitmq_management
