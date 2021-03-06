## Build Amazon AWS - AMI

### Features

* Alpine 3.7.0
* Packer 1.2.1
* Ansible 2.5.0
* AWS-CLI 1.14.9
* Python 2.7.13
* Botocore 1.8.13

### Clone Project

```bash
git clone https://github.com/loginoel/packer.git
```

### Run and Connect to Container

If necessary, change the source route that you want to mount inside the container.

```bash
docker run -it -v ./packer:/packer punkerside/packer sh
```

### Execute Packer

You must change the variables AWS_REGION and AWS_SUBNET, keeping in mind that the subnet must be able to assign public ip addresses.

```bash
packer build -var 'aws_access_key=ACCESS_KEY' -var 'aws_secret_key=SECRET_KEY' -var 'aws_region=AWS_REGION' -var 'aws_subnet=AWS_SUBNET' packer.json
```