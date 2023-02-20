#created by codefire

echo "Welcome to the Yerbas node Install script v0.1a created by Codef1re"
echo " "
echo "Please enter the desired values at the prompts to continue"
echo " "
read -p "Please enter a name for the user account that will run the node: " uname
read -p "Please enter a password for this account: " pword
read -p "Please enter the IP addess of this node: " nodeip
read -p "Please enter the BLSKey of this node: " BLSK
read -p "How many node are already running on this VPS? (enter 0 for none): " numnodes
echo "Thanks for the info, you entered the following"
echo "Account Name: $uname"
echo "Ip Address: $nodeip"
echo "BLSKey: $BLSK"
echo "Number of Node already running: $"