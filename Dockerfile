FROM amazonlinux

RUN yum -y update && yum -y install aws-cli \
    python27 \
    python27-pip \
    wget \
    unzip

RUN pip install ansible

RUN wget https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip && unzip packer_1.2.1_linux_amd64.zip
RUN rm -rf packer_1.2.1_linux_amd64.zip && mv packer /usr/sbin/

ENV USER root
WORKDIR /opt/packer