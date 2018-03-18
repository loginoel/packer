FROM amazonlinux

RUN yum -y update && yum -y install aws-cli \
    shadow-utils \
    python27 \
    python27-pip \
    wget

RUN pip install ansible boto3

RUN wget https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip
RUN unzip packer_1.2.1_linux_amd64.zip
ADD mv packer /usr/sbin/
RUN useradd ansible

ENV USER ansible
WORKDIR /opt/packer
