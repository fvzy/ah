echo running start.sh
cd /home/container
mkdir .config/
mkdir .config/neofetch/ 
curl https://raw.githubusercontent.com/NextSekai/dok/main/config.conf > .config/neofetch/config.conf
curl https://raw.githubusercontent.com/NextSekai/dok/main/ass.txt > .config/neofetch/ass.txt
neofetch --source .config/neofetch/ass.txt

if [ -n "${START_COMMAND1}" ]; then 
    eval "${START_COMMAND1}"
fi
if [ -n "${START_COMMAND2}" ]; then
    eval ${START_COMMAND2}
fi