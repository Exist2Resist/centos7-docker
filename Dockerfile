FROM centos:7
MAINTAINER admin@dataadnstoragesolutions.com

RUN yum install -y epel-release
RUN yum update -y
RUN yum install -y wget
RUN wget https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl.py -O /usr/local/bin/systemctl
RUN chmod 755 /usr/local/bin/systemctl

CMD ["/usr/local/bin/systemctl"]