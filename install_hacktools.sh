#!/usr/bin/env bash

echo "OS Update"
sudo apt update

echo "Terminator Install"
sudo apt install terminator -y

echo "Nmap Install"
sudo apt install nmap -y

echo "GO Lang Install"
cd /tmp
sudo wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz 
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
sudo echo "GOPATH=$HOME/go" >> ~/.bashrc
sudo echo "export GOPATH" >> ~/.bashrc
sudo echo "PATH=\$PATH:\$GOPATH/bin # Add GOPATH/bin to PATH for scripting" >> ~/.bashrc
source ~/.bashrc

echo "Pip3 Install"
sudo apt install python3-pip -y

echo "APKLeaks Install"
sudo pip3 install apkleaks

# Creating variables

ToolsPath="$HOME/Documents/Tools"

echo "Creating all necessary folders"

mkdir -p ~/.gf
mkdir -p ~/Documents/Tools/
mkdir -p ~/Documents/Project/
mkdir -p ~/.config/notify/
mkdir -p ~/.config/amass/
mkdir -p ~/.config/subfinder/
mkdir -p ~/Documents/Lists/

echo "Download some important files"
eval wget -nc -O ~/Documents/Lists/XSS-OFJAAAH.txt https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS/XSS-OFJAAAH.txt

echo "Install PDTM"
go install github.com/projectdiscovery/pdtm/cmd/pdtm@latest
sleep 5
pdtm
sudo echo "binary-path: /home/AMBERJACK/8z4i0la949/go/bin" >> /home/AMBERJACK/8z4i0la949/.config/pdtm/config.yaml
pdtm -ia


echo "Install FFF"
go install github.com/tomnomnom/fff@latest
sleep 1

echo "Install airixss"
go install github.com/ferreiraklet/airixss@latest
sleep 1

echo "Install Freq"
go install github.com/takshal/freq@latest
sleep 1

echo "Install Goop"
go install github.com/deletescape/goop@latest
sleep 1

echo "Install Hakrawler"
go install github.com/hakluke/hakrawler@latest
sleep 1

echo "Install Httprobe"
go install github.com/tomnomnom/httprobe@latest
sleep 1

echo "Install Meg"
go install github.com/tomnomnom/meg@latest
sleep 1

echo "Install Haklistgen"
go install github.com/hakluke/haklistgen@latest
sleep 1

echo "Install Haktldextract"
go install github.com/hakluke/haktldextract@latest
sleep 1

echo "Install Hakcheckurl"
go install github.com/hakluke/hakcheckurl@latest
sleep 1

echo "Install tojson"
go install github.com/tomnomnom/hacks/tojson@latest
sleep 1

echo "Install gowitness"
go install github.com/sensepost/gowitness@latest
sleep 1

echo "Install rush"
go install github.com/shenwei356/rush@latest
sleep 1

echo "Install hakcheckurl"
go install github.com/hakluke/hakcheckurl@latest
sleep 1

echo "Install shuffledns"
go install github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
sleep 1

echo "Install rescope"
go install github.com/root4loot/rescope@latest
sleep 1

echo "Install gron"
go install github.com/tomnomnom/gron@latest
sleep 1

echo "Install html-tool"
go install github.com/tomnomnom/hacks/html-tool@latest
sleep 1

echo "Install gf"
go install github.com/tomnomnom/gf@latest
sleep 1

echo "Install qsreplace"
go install github.com/tomnomnom/qsreplace@latest
sleep 1

echo "Install Amass"
go install github.com/OWASP/Amass/v3/...@latest
sleep 1

echo "Install ffuf"
go install github.com/ffuf/ffuf@latest
sleep 1

echo "Install assetfinder"
go install github.com/tomnomnom/assetfinder@latest
sleep 1

echo "Install github-subdomains"
go install github.com/gwen001/github-subdomains@latest
sleep 1

echo "Install cf-check"
go install github.com/dwisiswant0/cf-check@latest
sleep 1

echo "Install waybackurls"
go install github.com/tomnomnom/hacks/waybackurls@latest
sleep 1

echo "Install nuclei"
nuclei -update
sleep 1

echo "Install anew"
go install github.com/tomnomnom/anew@latest
sleep 1

echo "Install mildew"
go install github.com/daehee/mildew/cmd/mildew@latest
sleep 1

echo "Install dirdar"
go install github.com/m4dm0e/dirdar@latest
sleep 1

echo "Install unfurl"
go install github.com/tomnomnom/unfurl@latest
sleep 1

echo "Install shuffledns"
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
sleep 1

echo "Install github-endpoints"
go install github.com/gwen001/github-endpoints@latest
sleep 1

echo "Install gauplus"
go install github.com/bp0lr/gauplus@latest
sleep 1

echo "Install subjs"
go install github.com/lc/subjs@latest
sleep 1

echo "Install subjs"
go install github.com/hiddengearz/jsubfinder@latest
wget https://raw.githubusercontent.com/ThreatUnkown/jsubfinder/master/.jsf_signatures.yaml && mv .jsf_signatures.yaml ~/.jsf_signatures.yaml
sleep 1

echo "Install Gxss"
go install github.com/KathanP19/Gxss@latest
sleep 1

echo "Instal gospider"
go install github.com/jaeles-project/gospider@latest
sleep 1

echo "Install crobat"
go install github.com/cgboal/sonarsearch/crobat@latest
sleep 1

echo "Install dalfox"
go install github.com/hahwul/dalfox/v2@latest
sleep 1

echo "Install puredns"
go install github.com/d3mondev/puredns/v2@latest
sleep 1

echo "Install cariddi"
go install https://github.com/edoardottt/cariddi/@latest
sleep 1

echo "Install kxss"
go install github.com/tomnomnom/hacks/kxss@latest
sleep 1

echo "Install GetJs"
go install github.com/003random/getJS@latest
sleep 1

echo "Install hakrevdns"
go install github.com/hakluke/hakrevdns@latest
sleep 1

echo "Install dnsgen"
sudo pip3 install dnsgen
sleep 1

echo "Cloning all repos and install"

cd $ToolsPath

git clone https://github.com/tomnomnom/gf
cd gf
cp -r examples/*.json ~/.gf

cd $ToolsPath
git clone https://github.com/1ndianl33t/Gf-Patterns
cd Gf-Patterns
mv *.json ~/.gf

cd $ToolsPath
git clone https://github.com/m4ll0k/SecretFinder
cd SecretFinder
sudo pip3 install -r requirements.txt

cd $ToolsPath
git clone https://github.com/m4ll0k/BBTz

cd $ToolsPath
git clone https://github.com/devanshbatham/ParamSpider
cd ParamSpider
sudo pip3 install -r requirements.txt
