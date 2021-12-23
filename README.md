# KSK DevOps
## Prerequisite 
### For macOS
#### Setup Docker Desktop
##### Using Homebrew
1. Setup Homebrew
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. Setup Docker Desktop
`brew cask install docker`

##### Using DMG
1. Go to `https://docs.docker.com/desktop/mac/install/`
2. Follow the instruction on the page

##### Docker Desktop Alternative
1. minikube
2. Run Docker on Multipass
3. More alternatives : `https://devopstales.github.io/home/docker-desktop-alternatives/`

#### Setup AWS CLI
##### Using GUI
1. Download the PKG file from `https://awscli.amazonaws.com/AWSCLIV2.pkg`
2. Run the PKG file and follow the instructions

##### Using CLI
1. Download the PKG
`curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"`
2. run the `installer` program
`sudo installer -pkg ./AWSCLIV2.pkg -target /`

##### Verify the AWS CLI installation
`aws --version`

### For Ubuntu
#### Setup Docker CLI
1. Uninstall old versions
2. Set up the repository
`sudo apt-get update`
`sudo apt-get install ca-certificates curl gnupg lsb-release`
`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`
`echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`
3. Install Docker Engine
`sudo apt-get update`
`sudo apt-get install docker-ce docker-ce-cli containerd.io`
4. Executing the Docker Command Without Sudo
`sudo usermod -aG docker ${USER}`
`su - ${USER}`

#### Setup Docker Compose
1. Download Docker Compose 
`mkdir -p /usr/local/lib/docker/cli-plugins`
`curl -SL "https://github.com/docker/compose/releases/download/v2.2.2/docker-compose-linux-$(uname -m)" -o /usr/local/lib/docker/cli-plugins`
`chmod +x /usr/local/lib/docker/cli-plugins/docker-compose`

#### Verify Docker and Docker Compose installation
`docker version`
`docker compose version`

#### Setup AWS CLI
1. Install `unzip`
`sudo apt install unzip`
2. Download the installation file
`curl "https://awscli.amazonaws.com/awscli-exe-linux-$(uname -m).zip" -o "awscliv2.zip"`
3. Unzip the installation file
`unzip awscliv2.zip`
4. Run the install program
`sudo ./aws/install`

#### Verify the AWS CLI installation
`aws --version`
