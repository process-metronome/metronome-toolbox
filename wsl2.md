# Windows Subsystem for Linux
## Setup

The front end is managed using the Windows Subsystem for Linux. 
https://docs.microsoft.com/en-us/windows/nodejs/setup-on-wsl2#install-nvm-nodejs-and-npm

### Node Version Management

```bash
# Install node for building the webfront end using Ubuntu
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install node
nvm install --lts
cd <your_dirctory>/
npm install
```

### Terraform
```bash
# Install Terraform
TERRAFORM_VERSION=0.12.28
sudo apt-get install unzip
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
```

### Doctl
The Digital Ocean command line utility is very useful to manage digital ocean resources and quickly set-up environment config for **docker** and **kubernetes**.
```bash
# Install doctl
DOCTL_VERSION=1.45.1
cd ~
wget https://github.com/digitalocean/doctl/releases/download/v${DOCTL_VERSION}/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz
tar xf ~/doctl-${DOCTL_VERSION}-linux-amd64.tar.gz
sudo mv ~/doctl /usr/local/bin
```




