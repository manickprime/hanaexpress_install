#bin/zsh
echo "\033[1;32m ===============================================================================================";
echo "Create data directory for container mount";
echo "Data directory path '/data/hanaexpress'";
sudo mkdir -p /data/hanaexpress && 
sudo chown 12000:79 /data/hanaexpress &&
echo "\033[1;32m ===============================================================================================";
echo "Create master password file \033[0m";
sudo echo "Master password : HanaDocker1@" &&
sudo echo "HanaDocker1@" > $PWD/passwd.json &&
echo "\033[1;32m ===============================================================================================";
echo "Deploying HANA Express container in detached mode \033[0m";
docker run -d -p 39013:39013 -p 39017:39017 -p 39041-39045:39041-39045 -p 1128-1129:1128-1129 -p 59013-59014:59013-59014 -v /data/hanaexpress:/hana/mounts \
--ulimit nofile=1048576:1048576 \
--sysctl kernel.shmmax=1073741824 \
--sysctl net.ipv4.ip_local_port_range='40000 60999' \
--sysctl kernel.shmmni=524288 \
--sysctl kernel.shmall=8388608 \
--name hanaexpress \
store/saplabs/hanaexpress:2.00.045.00.20200121.1 \
--passwords-url file://$PWD/passwd.json \
--agree-to-sap-license
