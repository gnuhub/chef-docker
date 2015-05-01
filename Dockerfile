FROM centos:latest


RUN yum clean all
RUN yum -y install sudo curl tar vim git net-tools hostname

RUN sed -i "s/Defaults    requiretty//" /etc/sudoers
RUN cat /etc/sudoers

ADD ./run.sh /run.sh
RUN bash /run.sh

RUN ls /opt/chef