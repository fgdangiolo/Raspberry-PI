#!/bin/bash

echo "======================="
echo "Update and Upgrade..."
echo "======================="

sudo apt-get update
sudo apt-get upgrade -y

echo "======================"
echo "Installing Mosquitto..."
echo "======================"


"Install broker and client app"
sudo apt install -y mosquitto mosquitto-clients

"Start the mosquitto broker on RPI"
sudo systemctl enable mosquitto.service

"To enable acces outisde"
sudo nano /etc/mosquitto/mosquitto.conf

"Write the port for the broker in the mosquitto.conf"

"listener 1883
#allow_anonymous true

#sudo reboot"

"Ho to use"

"Subscribe"
"$ mosquitto_sub -d -t testing_subscribe"

"Publish"
"$ mosquitto_pub -d -t testing_publish -m " "Hi, iam find" "



