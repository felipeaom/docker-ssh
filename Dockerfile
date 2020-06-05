FROM centos:7
MAINTAINER Felipe Marques

RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install openssh-clients openssh-server net-tools vim git
RUN yum clean all
RUN touch /run/utmp && chmod u+s /usr/bin/ping && echo "root:toor" | chpasswd

COPY entrypoint.sh /

EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]