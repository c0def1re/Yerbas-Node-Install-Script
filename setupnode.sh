#created by codefire

echo "Welcome to the Yerbas node Install script v0.1a created by Codef1re"
echo " "
echo "Please enter the desired values at the prompts to continue"
echo " "
read -p "Please enter a name for the user account that will run the node: " uname
echo " "
read -p "Please enter a password for this account: " pword
echo " "
read -p "Please enter the IP addess of this node: " nodeip
echo " "
read -p "Please enter the BLSKey of this node: " BLSK
echo " "
read -p "How many node are already running on this VPS? (enter 0 for none): " numnodes
echo " "
echo "Thanks for the info, you entered the following..."
echo "Account Name: $uname"
echo "Ip Address: $nodeip"
echo "BLSKey: $BLSK"
echo "Number of Node already running: $numnodes"

#setup firewall
sudo apt install unzip fail2ban nano cron ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 15420/tcp
sudo ufw enable

echo "enabled = true" >> /etc/fail2ban/jail.local
echo "port = 22" >> /etc/fail2ban/jail.local
echo "filter = sshd" >> /etc/fail2ban/jail.local
echo "logpath = /var/log/auth.log" >> /etc/fail2ban/jail.local
echo "maxretry = 3" >> /etc/fail2ban/jail.local