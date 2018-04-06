## Build Amazon AWS - AMI

### Features

* Amazon Linux AMI 2017.09.1
* Packer 1.2.1
* Ansible 2.5.0
* AWS-CLI 1.14.9
* Python 2.7.13
* Botocore 1.8.13

### Run and Connect to Container

```bash
docker run -ti -v /data:/opt/packer --name packer -d punkerside/packer /bin/bash
docker exec -ti packer_01 bash
```

### Execute Packer

You must change the variables AWS_REGION and AWS_SUBNET, keeping in mind that the subnet must be able to assign public ip addresses.

```bash
packer build -var 'aws_region=AWS_REGION' -var 'aws_subnet=AWS_SUBNET' packer.json
```