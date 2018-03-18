FROM amazonlinux

RUN yum -y update && yum -y install aws-cli \
    shadow-utils \
    python27 \
    python27-pip \
    wget \
    unzip

RUN pip install ansible boto3

RUN wget https://releases.hashicorp.com/packer/1.2.1/packer_1.2.1_linux_amd64.zip && unzip packer_1.2.1_linux_amd64.zip
RUN mv packer /usr/sbin/ && rm -rf packer_1.2.1_linux_amd64.zip

RUN useradd ansible
ENV USER ansible

WORKDIR /opt/packer
