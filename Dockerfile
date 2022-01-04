FROM centos:7

RUN yum install -y epel-release && yum clean all -y
RUN yum update -y && yum clean all -y
RUN yum install -y wget && yum clean all -y
RUN wget https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl.py -O /usr/local/bin/systemctl
RUN chmod 755 /usr/local/bin/systemctl

CMD ["/usr/local/bin/systemctl"]
