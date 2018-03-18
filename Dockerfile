FROM amazonlinux

RUN yum -y update && yum -y install aws-cli \
    shadow-utils \
    python27 \
    python27-pip

RUN pip install ansible boto3

COPY packer /usr/sbin/packer
RUN useradd ansible

ENV USER ansible
WORKDIR /opt/packer
