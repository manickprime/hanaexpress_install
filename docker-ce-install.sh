#/bin/zsh
echo "\033[1;32m ===============================================================================================";
echo "Install prerequisite packages for docker \033[0m";
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common &&

echo "\033[1;32m ===============================================================================================";
echo "Add gpg and fingerprint \033[0m";
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo apt-key fingerprint 0EBFCD88 &&

echo "\033[1;32m ===============================================================================================";
echo "Add repository for x86_64/AMD64 \033[0m";
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&

echo "\033[1;32m ===============================================================================================";
echo "Update repository cache \033[0m";
sudo apt-get update &&

echo "\033[1;32m ===============================================================================================";
echo "Install docker ce, docker ce cli and container.io \033[0m";
sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "\033[1;32m ===============================================================================================";
echo "Add user to docker group so docker is accissible without sudo \033[0m"
sudo usermod -aG docker $(whoami)

echo "\033[1;32m ===============================================================================================";
echo "Docker CE install complete, rebooting"
sleep 5;
sudo reboot
 
