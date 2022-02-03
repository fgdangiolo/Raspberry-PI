#!/bin/bash

echo "======================="
echo "Update and Upgrade..."
echo "======================="

sudo apt-get update
sudo apt-get upgrade -y

echo "======================"
echo "Installing Grafana..."
echo "======================"

#Add the APT key used to authenticate packages:
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

#Add the Grafana APT repository:
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

#Update
sudo apt-get update

#Install Grafana
sudo apt-get install -y grafana

#Grafana is now installed, but not yet running. To make sure Grafana starts up even if the Raspberry Pi is restarted, we need to enable and start the Grafana Systemctl service.

#Enable the Grafana server:
sudo /bin/systemctl enable grafana-server

# Start the Grafana server:
sudo /bin/systemctl start grafana-server

#Grafana is now running on the machine and is accessible from any device on the local network.

echo "==============================================================================================================="
echo "Open a browser and go to http://<ip address>:3000, where the IP address is the address that you used to connect to the Raspberry Pi earlier. You’re greeted with the Grafana login page."

echo "Log in to Grafana with the default username admin, and the default password admin."

echo "Change the password for the admin user when asked.

Congratulations! Grafana is now running on your Raspberry Pi. If the Raspberry Pi is ever restarted or turned off, Grafana will start up whenever the machine regains power."

echo "==============================================================================================================="

